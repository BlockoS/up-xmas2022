; [todo] routine to clear the text area
; [todo] fight menu
; [todo] run menu
; [todo] item menu

; [todo] attack list
; [todo] gameplay
; [todo] a.i

; [todo] playfield : reserrer pour ajouter bordure et faire moins étalé
; [todo] add git ignore

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

    ld a, 4
    ld (enemy.id), a
    call enemy.print_name
    
    call health.draw

    xor a
    ld (update.callback), a

loop:
    wait_vbl

    call update

    jp loop

update:
.callback equ $+1
    jr $
    jp main_menu.init
    jp main_menu.fight
    jp main_menu.item
    jp main_menu.run
; [todo] fight
; [todo] run
; [todo] item

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
; [todo] more ?
.id: defb 0

msg_box:
.clear:
    ld (@sp_save), sp
    xor a
    ld h, a
    ld l, a
    ld sp, 0xd395
repeat 17
    push hl
rend
    ld sp, 0xd3bd
repeat 17
    push hl
rend
@sp_save equ $+1
    ld sp, 0x0000
    ret

str.a_wild:   defb 'A wild '
str.appeared: defb 'appeared!'
str.atk.miss: defb 'attack missed.'
str.fainted:  defb 'fainted.'
str.crit:     defb 'Critical hit!'
str.bleh:     defb 'It is not very effective!'

names:
.data:
    defb 4,  'ELFO'
    defb 5,  'ELFUM'
    defb 6,  'ELFULK'
    defb 5,  'SANTA'
    defb 10, 'SANTASATAN'
.ptr:
    defw .data,    .data+5,  .data+11
    defw .data+18, .data+24

include "random.asm"
include "keyboard.asm"
include "health.asm"
include "main_menu.asm"
include "fight.asm"
include "run.asm"
include "item.asm"

playfield:
.char:
incbin "data/playfield/ScreenCharacterData_Layer 0_Frame_1.bin"
.color:
incbin "data/playfield/ScreenColorData_Layer 0_Frame_1.bin"