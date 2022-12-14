CURSOR = 0xc0

runx:
.str:
    defb 26, 'You have nowhere to hide.'
    defb 22, 'You tripped and fall.'
    defb 9, 'Come on!'
    defb 26, 'Escape is not a solution.'

.ptr:
    defw .str, .str+26, .str+48, .str+57

.init:
    call msg_box.clear
    call random
    and 3
    add a, a
    ld c, a
    ld b, 0
    ld hl, .ptr
    add hl, bc
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld a, (de)
    ld (.count), a
    inc de
    ld (.src), de
    ld hl, 0xd374
    ld (.dst), hl

    ld a, 15
    ld (update.callback), a
    ret

.update:                        ; [todo] move to msg box
.count equ $+1
    ld b, 0x01
    djnz .l0
        ld a, 18
        ld (update.callback), a
        ret
.l0:
        ld hl, .count
        ld (hl), b
.src equ $+1
        ld hl, .str
        ld a, (hl)
        inc hl
        ld (.src), hl
.dst equ $+1
        ld hl, 0xd374+40
        ld (hl), a
        inc hl
        ld (.dst), hl
    ret

.wait:                          ; [todo] move to msg box
    ld b, 0x01
    djnz .l1

    ld hl, (.dst)
.cursor equ $+1
    ld a, 0x00
    ld (hl), a
    xor CURSOR
    ld (.cursor), a

    ld b, 10
.l1:
    ld a, b
    ld (.wait+1), a

    call keyboard.update
    and b
    rra
    ret nc
    ld a, 0                     ; [todo] make it configurable
    ld (update.callback), a
.l2:
    ret
