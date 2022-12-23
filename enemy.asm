enemy:
.load:
    ld de, .id
    ld (de), a          ; id
    inc de 

    add a, a            ; c = id*2
    ld c, a

    ld a, 31
    ld (de), a          ; hp
    inc de

    xor a               ; load enemy attributes
    ld b, a
    ld hl, .bestiary
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a

    ld c, 10
    ldir

    ; print name
    ld (.self), hl
    ld c, (hl)
    inc hl
    ld de, 0xd000+NAME_OFFSET_0
    ldir
 
    ld (display_attr.src), hl
    call display_attr
  
    ld (display_bitmap.src), ix
 
    ret

.attack:
    call msg_box.clear
    
    call random
    ld c, 3
    and 3
    cp 3
    jp nz, .l0
        xor a
.l0:
    ld (.move), a

    ; [todo] move to a new state if timing is too tight?
    ld hl, (.self)
    ld c, (hl)
    inc hl
    xor a
    ld b, a
    ld de, msg_box.buffer
    ldir

    ld hl, str.used
    ld c, 6
    ldir

    ld a, (.move)
    add a, a
    ld c, a
    ld hl, .names
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld c, (hl)
    inc hl
    ldir

    ld a, e
    sbc a, msg_box.buffer & 0xff
    ld (msg_box.count), a
    ld hl, msg_box.buffer
    ld (msg_box.src), hl
    ld hl, 0xd000+FIGHT_ITEM_0_OFFSET
    ld (msg_box.dst), hl

    ld a, ENEMY_COMPUTE
    ld (msg_box.next_state), a

    ld a, MSG_BOX_PRINT
    ld (update.callback), a

    ret

.compute:
.move equ $+1
    ld bc, 0x0000
    ld hl, .atk
    add hl, bc
    ld b, (hl)
    ld c, kevin.def
    call damage.compute
    ld b, a
    ld a, (kevin.hp)
    cp b
    jp c, fight.fainted
        sub b
       
        ld (kevin.hp), a
        ld hl, 0xd800+HP_OFFSET_1
        ld e, (HP_OFFSET_1+7) & 0xff
        ld b, HP_COLOR
        call health.draw

        ld a, MAIN_MENU_INIT
        ld (update.callback), a
        ret

.fainted:
    call msg_box.clear
    
    ld hl, (.self)
    ld c, (hl)
    inc hl
    xor a
    ld b, a
    ld de, msg_box.buffer
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

    ld a, MSG_BOX_PRINT
    ld (update.callback), a

    ld a, (.id)
    cp ENEMY_COUNT-1
    jp nz, .l1
        ld a, SUCCESS_RUN
        ld (msg_box.next_state), a
        ret
.l1:
    ld a, ENEMY_NEXT
    ld (msg_box.next_state), a
    ret

.next:
    ld a, (.id)                     ; load next enemey
    inc a
    call .load

    ld a, (.hp)                     ; reset health
    ld hl, 0xd800+HP_OFFSET_0
    ld e, (HP_OFFSET_0+7) & 0xff
    ld b, HP_COLOR
    call health.draw

    call msg_box.clear              ; display msg
    
    ld hl, (.self)
    ld c, (hl)
    inc hl
    xor a
    ld b, a
    ld de, msg_box.buffer
    ldir

    ld hl, str.appeared
    ld c, 10
    ldir

    ld a, e
    sbc a, msg_box.buffer & 0xff
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

.id: defb 0
.hp: defb 31
.def: defb 0
.atk: defs 3
.names: defs 6
.self: defs 2
.bestiary: defw elfo, elfulk, santa, santasatan

ENEMY_COUNT =  4

elfo:
.def: defb 1
.atk: defb 4, 5, 6
.ptr: defw .atk0, .atk1, .atk2
.name: defb 4, 'ELFO'
.att: incbin "./out/elfo_att.bin"
.txt: incbin "./out/elfo_txt.bin"
.atk0: defb 6, 'STONE'
.atk1: defb 11, 'CANDY CANE'
.atk2: defb 11, 'BROKEN TOY'

elfulk:
.def: defb 2
.atk: defb 5, 6, 7
.ptr: defw .atk0, .atk1, .atk2
.name: defb 6, 'ELFULK'
.att: incbin "./out/elfulk_att.bin"
.txt: incbin "./out/elfulk_txt.bin"
.atk0: defb 11, 'TOY HAMMER'
.atk1: defb 15, 'EGGNOG SPLASH'
.atk2: defb 15, 'LAPLAND SUPLEX'

santa:
.def: defb 3
.atk: defb 5, 6, 8
.ptr: defw .atk0, .atk1, .atk2
.name: defb 6, 'SANTA '
.att: incbin "./out/santa_att.bin"
.txt: incbin "./out/santa_txt.bin"
.atk0: defb 13, 'SUCKER PUNCH'
.atk1: defb 14, 'CHIMNEY STOMP'
.atk2: defb 13, 'PILLOW CHOKE'

santasatan:
.def: defb 5
.atk: defb 7, 9, 11
.ptr: defw .atk0, .atk1, .atk2
.name: defb 10, 'SANTASATAN'
.att: incbin "./out/santasatan_att.bin"
.txt: incbin "./out/santasatan_txt.bin"
.atk0: defb 18, 'MISSING BATTERIES'
.atk1: defb 14, 'OVERSIZED BOX'
.atk2: defb 13, 'PLASTIC JUNK'
