macro health_bar_impl id 
    ld hl, 0xd800+HP_OFFSET_{id}
    ld b, 0x44

.v{id}: equ $+1
    ld a, 0x00
    and 0x1f

    cp 0x04
    jp c, @l{id}0 
    ld (hl), b
    inc hl
    
    cp 0x08
    jp c, @l{id}0 
    ld (hl), b
    inc hl

    cp 0x0c
    jp c, @l{id}0 
    ld (hl), b
    inc hl

    cp 0x10
    jp c, @l{id}0 
    ld (hl), b
    inc hl

    cp 0x14
    jp c, @l{id}0 
    ld (hl), b
    inc hl

    cp 0x18
    jp c, @l{id}0 
    ld (hl), b
    inc hl

    cp 0x1c
    jp c, @l{id}0 
    ld (hl), b
    inc hl

    cp 0x20
    jp c, @l{id}0 
    ld (hl), b
    inc hl

@l{id}0:
    ld c, a
    and 0x03
    exx
    ld c, a
    ld b, 0
    ld hl, hp.color
    add hl, bc
    ld a, (hl)
    exx
    ld (hl), a
    
    exx
    ld hl, hp.char
    add hl, bc
    ld a, (hl)
    exx

    res 3, h
    ld (hl), a
    inc hl

    set 3, h
    
    ld b, 0x00
    ld a, (HP_OFFSET_{id} + 7) & 0xff
@l{id}1:
    ld (hl), b
    inc hl
    cp l
    jp nc, @l{id}1
mend

health:
.draw
    health_bar_impl 0
    health_bar_impl 1
    ret