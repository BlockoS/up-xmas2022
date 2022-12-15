FIGHT_ITEM_0_OFFSET = 0x374
FIGHT_ITEM_1_OFFSET = FIGHT_ITEM_0_OFFSET + SCREEN_WIDTH
FIGHT_ITEM_2_OFFSET = FIGHT_ITEM_0_OFFSET + 14
FIGHT_ITEM_3_OFFSET = FIGHT_ITEM_2_OFFSET + SCREEN_WIDTH

BUTTON_FIGHT_ITEM_0_OFFSET = FIGHT_ITEM_0_OFFSET - 1
BUTTON_FIGHT_ITEM_1_OFFSET = FIGHT_ITEM_1_OFFSET - 1
BUTTON_FIGHT_ITEM_2_OFFSET = FIGHT_ITEM_2_OFFSET - 1
BUTTON_FIGHT_ITEM_3_OFFSET = FIGHT_ITEM_3_OFFSET - 1

fight:
.str:
.str0: defb 9,  'MALMO HUG'
.str1: defb 10, 'TAZER BEAM'
.str2: defb 11, 'FIRE BREATH'
.str3: defb 9,  'ACID PUKE'
.ptr:
    defw .str0, .str1, .str2, .str3

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
        ; [todo]
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
        ; [todo]
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
        ; [todo]
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
        ; [todo]
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
