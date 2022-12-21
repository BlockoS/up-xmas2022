FIGHT_ITEM_0_OFFSET = 0x374
FIGHT_ITEM_1_OFFSET = FIGHT_ITEM_0_OFFSET + SCREEN_WIDTH
FIGHT_ITEM_2_OFFSET = FIGHT_ITEM_0_OFFSET + 14
FIGHT_ITEM_3_OFFSET = FIGHT_ITEM_2_OFFSET + SCREEN_WIDTH

BUTTON_FIGHT_ITEM_0_OFFSET = FIGHT_ITEM_0_OFFSET - 1
BUTTON_FIGHT_ITEM_1_OFFSET = FIGHT_ITEM_1_OFFSET - 1
BUTTON_FIGHT_ITEM_2_OFFSET = FIGHT_ITEM_2_OFFSET - 1
BUTTON_FIGHT_ITEM_3_OFFSET = FIGHT_ITEM_3_OFFSET - 1

ITEM2_MP = 4
ITEM3_MP = 6

fight:
.str:
.str0: defb 9,  'MALMO HUG'
.str1: defb 10, 'TAZER BEAM'
.str2: defb 11, 'FIRE BREATH'
.str3: defb 9,  'ACID PUKE'
.ptr:
    defw .str0, .str1, .str2, .str3

.atk: defb 2,3,5,7

.init:
    call msg_box.clear                  ; [todo] move to main_menu key press

    ld a, BUTTON
    ld (0xd000+BUTTON_FIGHT_OFFSET), a

    ld hl, .str+1
    ld de, 0xd000+FIGHT_ITEM_0_OFFSET
    ld bc, 9
    ldir

    inc hl
    ld de, 0xd000+FIGHT_ITEM_1_OFFSET
    ld bc, 10
    ldir

    inc hl
    ld de, 0xd000+FIGHT_ITEM_2_OFFSET
    ld bc, 11
    ldir

    inc hl
    ld de, 0xd000+FIGHT_ITEM_3_OFFSET
    ld bc, 9
    ldir

    ld a, FIGHT_ITEM_0
    ld (update.callback), a

    ret

.item0:
    call keyboard.update
    and b

    bit 0, a
    jp z, .l0
    ; shift : ok
        call msg_box.clear

        ; [todo] move to a new state if timing is too tight?
        ld hl, str.kevin
        ld de, msg_box.buffer
        ld bc, 11
        ldir

        ld hl, .str0+1
        ld bc, 10
        ldir

        ld a, 21
        ld (msg_box.count), a
        ld hl, msg_box.buffer
        ld (msg_box.src), hl
        ld hl, 0xd000+FIGHT_ITEM_0_OFFSET
        ld (msg_box.dst), hl

        ld a, 0
        ld (.move), a

        ld a, FIGHT_COMPUTE_0
        ld (msg_box.next_state), a

        ld a, MSG_BOX_PRINT
        ld (update.callback), a

        ret
.l0:
    bit 6, a
    jp z, .l1
    ; ctrl: cancel
        ld a, MAIN_MENU_INIT
        ld (update.callback), a
        ret
.l1:
    bit 3, a
    jp z, .l2
    ; right : item 2
        xor a
        ld (0xd000+BUTTON_FIGHT_ITEM_0_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_ITEM_2_OFFSET), a

        ld a, FIGHT_ITEM_2
        ld (update.callback), a
        ret
.l2:
    bit 4, a
    jp z, .l3
    ; down : item 1
        xor a
        ld (0xd000+BUTTON_FIGHT_ITEM_0_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_ITEM_1_OFFSET), a
 
        ld a, FIGHT_ITEM_1
        ld (update.callback), a
.l3:
    ret

.item1:
    call keyboard.update
    and b

    bit 0, a
    jp z, .l4
    ; shift : ok
        call msg_box.clear

        ; [todo] move to a new state if timing is too tight?
        ld hl, str.kevin
        ld de, msg_box.buffer
        ld bc, 11
        ldir

        ld hl, .str1+1
        ld bc, 11
        ldir

        ld a, 22
        ld (msg_box.count), a
        ld hl, msg_box.buffer
        ld (msg_box.src), hl
        ld hl, 0xd000+FIGHT_ITEM_0_OFFSET
        ld (msg_box.dst), hl

        ld a, 1
        ld (.move), a

        ld a, FIGHT_COMPUTE_0
        ld (msg_box.next_state), a

        ld a, MSG_BOX_PRINT
        ld (update.callback), a

        ret
.l4:
    bit 6, a
    jp z, .l5
    ; ctrl: cancel
        ld a, MAIN_MENU_INIT
        ld (update.callback), a
        ret
.l5:
    bit 3, a
    jp z, .l6
    ; right : item 3
        xor a
        ld (0xd000+BUTTON_FIGHT_ITEM_1_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_ITEM_3_OFFSET), a

        ld a, FIGHT_ITEM_3
        ld (update.callback), a
        ret
.l6:
    bit 5, a
    jp z, .l7
    ; up : item 0
        xor a
        ld (0xd000+BUTTON_FIGHT_ITEM_1_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_ITEM_0_OFFSET), a
 
        ld a, FIGHT_ITEM_0
        ld (update.callback), a
.l7:
    ret

.item2:
    call keyboard.update
    and b

    bit 0, a
    jp z, .l8
    ; shift : ok
        ld hl, kevin.mp
        ld a, (hl)
        ld b, ITEM2_MP
        cp b
        jp c, .oomp

        sub b
        ld (hl), a

        ld hl, 0xd800+MP_OFFSET_1
        ld e, (MP_OFFSET_1+7) & 0xff
        ld b, MP_COLOR
        call health.draw

        call msg_box.clear

        ; [todo] move to a new state if timing is too tight?
        ld hl, str.kevin
        ld de, msg_box.buffer
        ld bc, 11
        ldir

        ld hl, .str2+1
        ld bc, 12
        ldir

        ld a, 23
        ld (msg_box.count), a
        ld hl, msg_box.buffer
        ld (msg_box.src), hl
        ld hl, 0xd000+FIGHT_ITEM_0_OFFSET
        ld (msg_box.dst), hl

        ld a, 2
        ld (.move), a

        ld a, FIGHT_COMPUTE_0
        ld (msg_box.next_state), a

        ld a, MSG_BOX_PRINT
        ld (update.callback), a
        ret
.l8:
    bit 6, a
    jp z, .l9
    ; ctrl: cancel
        ld a, MAIN_MENU_INIT
        ld (update.callback), a
        ret
.l9:
    bit 2, a
    jp z, .l10
    ; left : item 0
        xor a
        ld (0xd000+BUTTON_FIGHT_ITEM_2_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_ITEM_0_OFFSET), a

        ld a, FIGHT_ITEM_0
        ld (update.callback), a
        ret
.l10:
    bit 4, a
    jp z, .l11
    ; down : item 3
        xor a
        ld (0xd000+BUTTON_FIGHT_ITEM_2_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_ITEM_3_OFFSET), a
 
        ld a, FIGHT_ITEM_3
        ld (update.callback), a
.l11:
    ret

.item3:
    call keyboard.update
    and b

    bit 0, a
    jp z, .l12
    ; shift : ok
        ld hl, kevin.mp
        ld a, (hl)
        ld b, ITEM3_MP
        cp b
        jp c, .oomp

        sub b
        ld (hl), a

        ld hl, 0xd800+MP_OFFSET_1
        ld e, (MP_OFFSET_1+7) & 0xff
        ld b, MP_COLOR
        call health.draw

        call msg_box.clear

        ; [todo] move to a new state if timing is too tight?
        ld hl, str.kevin
        ld de, msg_box.buffer
        ld bc, 11
        ldir

        ld hl, .str3+1
        ld bc, 10
        ldir

        ld a, 21
        ld (msg_box.count), a
        ld hl, msg_box.buffer
        ld (msg_box.src), hl
        ld hl, 0xd000+FIGHT_ITEM_0_OFFSET
        ld (msg_box.dst), hl

        ld a, 3
        ld (.move), a

        ld a, FIGHT_COMPUTE_0
        ld (msg_box.next_state), a

        ld a, MSG_BOX_PRINT
        ld (update.callback), a
        ret
.l12:
    bit 6, a
    jp z, .l13
    ; ctrl: cancel
        ld a, MAIN_MENU_INIT
        ld (update.callback), a
        ret
.l13:
    bit 2, a
    jp z, .l14
    ; left : item 2
        xor a
        ld (0xd000+BUTTON_FIGHT_ITEM_3_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_ITEM_1_OFFSET), a

        ld a, FIGHT_ITEM_1
        ld (update.callback), a
        ret
.l14:
    bit 5, a
    jp z, .l15
    ; up : item 2
        xor a
        ld (0xd000+BUTTON_FIGHT_ITEM_3_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_ITEM_2_OFFSET), a
 
        ld a, FIGHT_ITEM_2
        ld (update.callback), a
.l15:
    ret 

.compute:
.move equ $+1
    ld bc, 0x0000
    ld hl, .atk
    add hl, bc
    ld b, (hl)
    ld hl, enemy.def
    ld c, (hl)
    call damage.compute
    ld b, a
    ld a, (enemy.hp)
    cp b
    jp nc, .l16
        ld a, b
.l16:
    sub b
    ld (enemy.hp), a

    ld hl, 0xd800+HP_OFFSET_0
    ld e, (HP_OFFSET_0+7) & 0xff
    ld b, HP_COLOR
    call health.draw

    ld a, (enemy.hp)
    cp 0
    jp nz, .l17
        ld a, ENEMY_FAINTED
        ld (update.callback), a
        ret
.l17:
    ld a, ENEMY_ATTACK
    ld (update.callback), a
    ret

.fainted:
    xor a
    ld (kevin.hp), a
    ld hl, 0xd800+HP_OFFSET_1
    ld e, (HP_OFFSET_1+7) & 0xff
    ld b, HP_COLOR
    call health.draw

    call msg_box.clear
    
    ld hl, str.kevin
    ld de, msg_box.buffer
    ld bc, 5
    ldir

    ld hl, str.fainted
    ld c, 9
    ldir

    ld a, e
    sbc a, msg_box.buffer & 0xff
    ld (msg_box.count), a
    ld hl, msg_box.buffer
    ld (msg_box.src), hl
    ld hl, 0xd000+FIGHT_ITEM_0_OFFSET
    ld (msg_box.dst), hl

    ld a, MAIN_MENU_INIT                ; [todo]
    ld (msg_box.next_state), a

    ld a, MSG_BOX_PRINT
    ld (update.callback), a
    ret

.oomp:
    call msg_box.clear

    ; [todo] move to a new state if timing is too tight?
    ld hl, str.kevin
    ld de, msg_box.buffer
    ld bc, 11
    ldir

    ld hl, str.oomp
    ld bc, 14
    ldir

    ld a, e
    sub msg_box.buffer & 0xff
    ld (msg_box.count), a
    ld hl, msg_box.buffer
    ld (msg_box.src), hl
    ld hl, 0xd000+FIGHT_ITEM_0_OFFSET
    ld (msg_box.dst), hl

    ld a, MAIN_MENU_INIT
    ld (msg_box.next_state), a

    ld a, MSG_BOX_PRINT
    ld (update.callback), a

    ret
