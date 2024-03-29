CURSOR = 0xc0

msg_box:
.buffer: defs 64
.print:
.count equ $+1
    ld b, 0x01
    djnz .l0
        ld hl, (.dst)
        ld (.cursor+2), hl

        ld a, MSG_BOX_WAIT
        ld (update.callback), a
        ret
.l0:
        ld a, b
        ld (.count), a
.src equ $+1
        ld hl, 0x0000
        ld a, (hl)
        inc hl
        ld (.src), hl
.dst equ $+1
        ld hl, 0xd374
        ld (hl), a
        inc hl
        ld a, 0x93              ; here we consider that the text will allways be 2 lines tall
        cp l    
        jp nc, .store
            ld hl, 0xd39c
            add hl, bc
.store:
        ld (.dst), hl
    ret

.wait:
    ld b, 0x01
    djnz .l1

.cursor equ $+1
    ld a, 0x00
    ld (0xd374+40), a
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
.next_state equ $+1
    ld a, 0x00
    ld (update.callback), a
.l2:
    ret
   
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
