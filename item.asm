ITEM_0_OFFSET = 0x374
ITEM_1_OFFSET = ITEM_0_OFFSET + SCREEN_WIDTH

BUTTON_ITEM_0_OFFSET = ITEM_0_OFFSET - 1
BUTTON_ITEM_1_OFFSET = ITEM_1_OFFSET - 1

items:
.str:
.str0: defb 10, 'GREEN BULL'
.str1: defb 9, 'CHOCOPOOP'
.ptr:  defw .str0, .str1

.init:
    call msg_box.clear                  ; [todo] move to main_menu key press

    ld a, BUTTON
    ld (0xd000+BUTTON_FIGHT_OFFSET), a

    ld hl, .str+1
    ld de, 0xd000+ITEM_0_OFFSET
    ld bc, 10
    ldir

    inc hl
    ld de, 0xd000+ITEM_1_OFFSET
    ld bc, 9
    ldir

    ld a, ITEMS_0
    ld (update.callback), a

    ret

.item0:
    call keyboard.update
    and b

    bit 0, a
    jp z, .l0
    ; shift : ok
        ld a, (.count)
        jp z, .l2

        call msg_box.clear

        ; [todo] move to a new state if timing is too tight?
        ld hl, str.kevin
        ld de, msg_box.buffer
        ld bc, 11
        ldir

        ld hl, .str0+1
        ld bc, 11
        ldir
        
        ld a, e
        sbc a, msg_box.buffer & 0xff
        ld (msg_box.count), a
        ld hl, msg_box.buffer
        ld (msg_box.src), hl
        ld hl, 0xd000+ITEM_0_OFFSET
        ld (msg_box.dst), hl

        ld a, ITEMS_USE_0
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
    bit 4, a
    jp z, .l2
    ; down : item 1
        xor a
        ld (0xd000+BUTTON_ITEM_0_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_ITEM_1_OFFSET), a
 
        ld a, ITEMS_1
        ld (update.callback), a
.l2:
    ret

.item1:
    call keyboard.update
    and b

    bit 0, a
    jp z, .l3
    ; shift : ok
        ld a, (.count+1)
        jp z, .l5

        call msg_box.clear

        ; [todo] move to a new state if timing is too tight?
        ld hl, str.kevin
        ld de, msg_box.buffer
        ld bc, 11
        ldir

        ld hl, .str1+1
        ld bc, 10
        ldir

        ld a, e
        sbc a, msg_box.buffer & 0xff
        ld (msg_box.count), a
        ld hl, msg_box.buffer
        ld (msg_box.src), hl
        ld hl, 0xd000+FIGHT_ITEM_0_OFFSET
        ld (msg_box.dst), hl

        ld a, ITEMS_USE_1
        ld (msg_box.next_state), a

        ld a, MSG_BOX_PRINT
        ld (update.callback), a

        ret
.l3:
    bit 6, a
    jp z, .l4
    ; ctrl: cancel
        ld a, MAIN_MENU_INIT
        ld (update.callback), a
        ret
.l4:
    bit 5, a
    jp z, .l5
    ; up : item 0
        xor a
        ld (0xd000+BUTTON_ITEM_1_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_ITEM_0_OFFSET), a
 
        ld a, ITEMS_0
        ld (update.callback), a
.l5:
    ret

.hp:
    ld hl, .count
    dec (hl)

    ld hl, .stat
    ld a, (hl)

    ld hl, kevin.hp
    ld b, (hl)

    add a, b

    cp 31
    jp c, .l6
        ld a, 31
.l6:
    ld (hl), a

    ld hl, 0xd800+HP_OFFSET_1
    ld e, (HP_OFFSET_1+7) & 0xff
    ld b, HP_COLOR
    call health.draw

    ld a, ENEMY_ATTACK
    ld (update.callback), a

    ret

.mp:
    ld hl, .count+1
    dec (hl)

    ld hl, .stat+1
    ld a, (hl)

    ld hl, kevin.mp
    ld b, (hl)

    add a, b

    cp 31
    jp c, .l7
        ld a, 31
.l7:
    ld (hl), a

    ld hl, 0xd800+MP_OFFSET_1
    ld e, (MP_OFFSET_1+7) & 0xff
    ld b, MP_COLOR
    call health.draw

    ld a, ENEMY_ATTACK
    ld (update.callback), a

    ret

.count: defb 5, 5
.stat:  defb 7, 7