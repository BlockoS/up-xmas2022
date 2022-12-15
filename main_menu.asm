FIGHT_OFFSET = 0x374
ITEM_OFFSET  = 0x39c
RUN_OFFSET   = 0x37c

BUTTON_FIGHT_OFFSET = FIGHT_OFFSET-1
BUTTON_ITEM_OFFSET  = ITEM_OFFSET-1
BUTTON_RUN_OFFSET   = RUN_OFFSET-1

main_menu:
.txt:
    defb 5, 'FIGHT'
    defb 4, 'ITEM'
    defb 3, 'RUN'
.ptr:
    defw .txt, .txt+6, .txt+12

.init:
    call msg_box.clear

    ld a, BUTTON
    ld (0xd000+BUTTON_FIGHT_OFFSET), a

    ld hl, .txt+1
    ld de, 0xd000+FIGHT_OFFSET
    ld bc, 5
    ldir

    inc hl
    ld de, 0xd000+ITEM_OFFSET
    ld bc, 4
    ldir

    inc hl
    ld de, 0xd000+RUN_OFFSET
    ld bc, 3
    ldir

    ld a, MAIN_MENU_FIGHT
    ld (update.callback), a
    
    ret
    
.fight:
    call keyboard.update
    and b

    bit 0, a
    jp z, @l0
    ; shift : ok
        ld a, FIGHT_INIT
        ld (update.callback), a
        ret
@l0:
    bit 3, a
    jp z, @l1
    ; right : run
        xor a
        ld (0xd000+BUTTON_FIGHT_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_RUN_OFFSET), a

        ld a, MAIN_MENU_RUN
        ld (update.callback), a
        ret
@l1:
    bit 4, a
    jp z, @l2
    ; down : item
        xor a
        ld (0xd000+BUTTON_FIGHT_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_ITEM_OFFSET), a

        ld a, MAIN_MENU_ITEM
        ld (update.callback), a
        ret
@l2:
    ret

main_menu.item:
    call keyboard.update
    and b

    bit 0, a
    jp z, @l3
    ; shift : ok
        ; [todo]
        ret
@l3:
    bit 5, a
    jp z, @l4
    ; up : fight
        xor a
        ld (0xd000+BUTTON_ITEM_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_OFFSET), a

        ld a, MAIN_MENU_FIGHT
        ld (update.callback), a
        ret
@l4:
    ret

main_menu.run:
    call keyboard.update
    and b

    bit 0, a
    jp z, @l5
    ; shift : ok
        ld a, RUN_INIT
        ld (update.callback), a
        ret
@l5:
    bit 2, a
    jp z, @l6
    ; left : fight
        xor a
        ld (0xd000+BUTTON_RUN_OFFSET), a
        ld a, BUTTON
        ld (0xd000+BUTTON_FIGHT_OFFSET), a

        ld a, MAIN_MENU_FIGHT
        ld (update.callback), a
        ret
@l6:
    ret
