; [todo] add music
; [todo] success screen

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
HP_OFFSET_1   = 0x2ee
MP_OFFSET_1   = 0x2c6

BUTTON = 0x47

MSG_BOX_PRINT   = 0
MSG_BOX_WAIT    = 3
MAIN_MENU_INIT  = 6
MAIN_MENU_FIGHT = 9
MAIN_MENU_ITEM  = 12
MAIN_MENU_RUN   = 15
FIGHT_INIT      = 18
FIGHT_ITEM_0    = 21
FIGHT_ITEM_1    = 24
FIGHT_ITEM_2    = 27
FIGHT_ITEM_3    = 30
FIGHT_COMPUTE_0 = 33
ENEMY_ATTACK    = 36
ENEMY_COMPUTE   = 39
ENEMY_FAINTED   = 42
ENEMY_NEXT      = 45
RUN_INIT        = 48
ITEMS_INIT      = 51
ITEMS_0         = 54
ITEMS_1         = 57
ITEMS_USE_0     = 60
ITEMS_USE_1     = 63
GAMEOVER_RUN    = 66
SUCCESS_RUN     = 69

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

	ld hl, 0xe008           ; sound off
	ld (hl), 0x00

    call start

loop:
    ;wait_vbl
    call display_bitmap
    call update

    jp loop

update:
.callback equ $+1
    jr $
    jp msg_box.print 
    jp msg_box.wait
; main menu
    jp main_menu.init
    jp main_menu.fight
    jp main_menu.item
    jp main_menu.run
; fight
    jp fight.init
    jp fight.item0
    jp fight.item1
    jp fight.item2
    jp fight.item3
    jp fight.compute
; enemy
    jp enemy.attack
    jp enemy.compute
    jp enemy.fainted
    jp enemy.next
; run
    jp runx.init
; item
    jp items.init
    jp items.item0
    jp items.item1
    jp items.hp
    jp items.mp
; gameover
    jp gameover.run
; success
    jp success.run

success:
.char:  incbin "data/success/ScreenCharacterData_Layer 0_Frame_1.bin"
.color: incbin "data/success/ScreenColorData_Layer 0_Frame_1.bin"
.run:
    ld hl, success.char
    ld de, 0xd000
    ld bc, SCREEN_WIDTH*SCREEN_HEIGHT
    ldir

    ld hl, success.color
    ld de, 0xd800
    ld bc, SCREEN_WIDTH*SCREEN_HEIGHT
    ldir

	ld hl, 0xe008           ; sound on
	ld (hl), 0x01

    ld hl, success_song
    xor a
    call PLY_LW_Init

    jp gameover.loop

gameover:
.char:  incbin "data/gameover/ScreenCharacterData_Layer 0_Frame_1.bin"
.color: incbin "data/gameover/ScreenColorData_Layer 0_Frame_1.bin"
.run:
    ld hl, gameover.char
    ld de, 0xd000
    ld bc, SCREEN_WIDTH*SCREEN_HEIGHT
    ldir

    ld hl, gameover.color
    ld de, 0xd800
    ld bc, SCREEN_WIDTH*SCREEN_HEIGHT
    ldir

	ld hl, 0xe008           ; sound on
	ld (hl), 0x01

    ld hl, gameover_song
    xor a
    call PLY_LW_Init

.loop:
    wait_vbl

    call PLY_LW_Play

    call keyboard.update
    and b

    bit 0, a
    jp nz, .end

    jp .loop

    call PLY_LW_Stop
    
    ld hl, 0xe008           ; sound off
	ld (hl), 0x00

.end:
    ld a, MAIN_MENU_INIT
    ld (update.callback), a

start:
    ld a, 31
    ld hl, kevin.hp
    ld (hl), a
    inc hl
    ld (hl), a

    ld a, 8
    ld hl, items.count
    ld (hl), a
    inc hl
    ld (hl), a

    ; copy playfield
    ld hl, playfield.char
    ld de, 0xd000
    ld bc, SCREEN_WIDTH*SCREEN_HEIGHT
    ldir

    ld hl, playfield.color
    ld de, 0xd800
    ld bc, SCREEN_WIDTH*SCREEN_HEIGHT
    ldir

    ld a, 0xff
    ld (enemy.id), a
    
    ld a, ENEMY_NEXT
    ld (update.callback), a

    ld hl, elfo.att
    ld (display_attr.src), hl
   
    ld hl, elfo.txt
    ld (display_bitmap.src), hl  
    
    call display_attr
    ret

; b atk
; c def
damage:
.compute:
    call random
    and 3
    ld e, a
    ld a, b
    add a, a
    add a, a
    add a, a
    add a, e 
    rra
    rra
    rra
    and 0x1f
    sub c           ; dmg = max(0, (atk*8 + random%4) / 8 - def)
    jp nc, .l1
        xor a
.l1:
    ret

kevin.hp: defb 31
kevin.mp: defb 31
kevin.def = 3

str.kevin: defb 'KEVIN'
str.used:  defb ' used '
str.oomp:  defb ' is out of MP.'
str.fainted:  defb ' fainted.'
str.appeared: defb ' appeared.'

include "random.asm"
include "keyboard.asm"
include "msg_box.asm"
include "health.asm"
include "main_menu.asm"
include "fight.asm"
include "run.asm"
include "item.asm"
include "enemy.asm"
include "bitmap.asm"

playfield:
.char:
incbin "data/playfield/ScreenCharacterData_Layer 0_Frame_1.bin"
.color:
incbin "data/playfield/ScreenColorData_Layer 0_Frame_1.bin"

PLY_CFG_ConfigurationIsPresent = 1
PLY_CFG_NoSoftNoHard = 1
PLY_CFG_SoftOnly = 1
PLY_CFG_SoftOnly_SoftwareArpeggio = 1
gameover_song: 
include "data/gameover_song.asm"
success_song:
include "data/success_song.asm"
include "arkos/PlayerLightweight_SHARPMZ700.asm"

