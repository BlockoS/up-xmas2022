
charset 'a','z',0x81
charset 'A','Z',0x01
charset '0','9',0x20
charset ' ',0x00
charset '.',0x2e
charset ',',0x2f
charset '?',0x49
charset ':',0x4f
charset '!',0x61

hblnk = 0xe008
vblnk = 0xe002

SCREEN_WIDTH = 40
SCREEN_HEIGHT = 25

MSG_BOX_OFFSET = 0x372
MSG_DOT = 0x47

NAME_OFFSET_0 = 0x029
HP_OFFSET_0   = 0x07c

NAME_OFFSET_1 = 0x29b
HP_OFFSET_1   = 0x2ef

BUTTON = 0x47

macro wait_vbl
    ; wait for vblank    
    ld hl, vblnk
    ld a, 0x7f
@wait0:
    cp (hl)
    jp nc, @wait0
@wait1:
    cp (hl)
    jp c, @wait1
endm

org #1200

main:
	di
	im 1

    ; copy playfield
    ld hl, playfield.char
    ld de, 0xd000
    ld bc, SCREEN_WIDTH*SCREEN_HEIGHT
    ldir

    ld hl, playfield.color
    ld de, 0xd800
    ld bc, SCREEN_WIDTH*SCREEN_HEIGHT
    ldir

    ld hl, health.v0
    ld (hl), 25

    ld hl, health.v1
    ld (hl), 19

    call enemy.print_name
    
    call main_menu.init

loop:
    ld b, 25
@w0:
    wait_vbl
    djnz @w0

    call health.draw

    call keyboard.update

    ld hl, 0xd000 + 50
    ld (hl), A

    jp loop

enemy:
.print_name:
    ; get string address
    ld a, (.id)
    add a, a
    ld c, a
    ld b, 0
    ld hl, names.ptr
    add hl, bc
    ld e, (hl)
    inc hl
    ld d, (hl)

    ex de, hl
    ld c, (hl)
    inc hl
    ld de, 0xd000+NAME_OFFSET_0
    ldir

    ret
; [todo] more
.id: defb 0

main_menu:
.init:
    xor a
    ld (.current), a

    ld hl, .txt+1
    ld de, 0xd000+0x374         ; [todo] defines
    ld bc, 5
    ldir

    inc hl
    ld de, 0xd000+0x39c
    ld bc, 4
    ldir

    inc hl
    ld de, 0xd000+0x37C
    ld bc, 3
    ldir

    ret
; [todo] playfield : reserrer pour ajouter bordure et faire moins étalé
; [todo] add git ignore
; [todo] rename health_bar to health
; [todo] select
; [todo] check keys
; [todo] "move" button

.txt:
    defb 5, 'FIGHT'
    defb 4, 'ITEM'
    defb 3, 'RUN'
.ptr:
    defw .txt, .txt+6, .txt+12
.current:
    defb 0

str.a_wild:   defb 'A wild '
str.appeared: defb 'appeared!'
str.atk.miss: defb 'attack missed.'
str.fainted:  defb 'fainted.'
str.crit:     defb 'Critical hit!'
str.bleh:     defb 'It is not very effective!'

hp:
.char:
    defb 0x00, 0x37, 0x7b, 0x3f, 0x43
.color:
    defb 0x40, 0x40, 0x40, 0x04, 0x40

names:
.data:
    defb 4, 'ELFO'
    defb 5, 'ELFUM'
    defb 6, 'ELFULK'
    defb 7, 'RUDOLPH'
    defb 5, 'SANTA'
.ptr:
    defw .data,    .data+5,  .data+11
    defw .data+18, .data+26

; [todo] attack list
; [todo] menu system
; [todo] inventory
; [todo] random
; [todo] gameplay
; [todo] a.i

include "keyboard.asm"
include "health_bar.asm"

playfield:
.char:
incbin "data/playfield/ScreenCharacterData_Layer 0_Frame_1.bin"
.color:
incbin "data/playfield/ScreenColorData_Layer 0_Frame_1.bin"