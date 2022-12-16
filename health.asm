health:
.char:
    defb 0x00, 0x37, 0x7b, 0x3f, 0x43
.color:
    defb 0x40, 0x40, 0x40, 0x04, 0x40

.draw:
    ld b, 0x44
    and 0x1f
    cp 0x04
    jp c, .l0 
    ld (hl), b
    inc hl
    
    cp 0x08
    jp c, .l0 
    ld (hl), b
    inc hl

    cp 0x0c
    jp c, .l0 
    ld (hl), b
    inc hl

    cp 0x10
    jp c, .l0 
    ld (hl), b
    inc hl

    cp 0x14
    jp c, .l0 
    ld (hl), b
    inc hl

    cp 0x18
    jp c, .l0 
    ld (hl), b
    inc hl

    cp 0x1c
    jp c, .l0 
    ld (hl), b
    inc hl

    cp 0x20
    jp c, .l0 
    ld (hl), b
    inc hl

.l0:
    ld c, a
    and 0x03
    exx
    ld c, a
    ld b, 0
    ld hl, health.color
    add hl, bc
    ld a, (hl)
    exx
    ld (hl), a
    
    exx
    ld hl, health.char
    add hl, bc
    ld a, (hl)
    exx

    res 3, h
    ld (hl), a
    inc hl

    set 3, h
    
    ld b, 0x00
    ld a, e
.l1:
    ld (hl), b
    inc hl
    cp l
    jp nc, .l1
    ret
