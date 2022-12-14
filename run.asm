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
    ld (msg_box.count), a
    inc de
    ld (msg_box.src), de
    ld hl, 0xd374
    ld (msg_box.dst), hl

    ld a, 15
    ld (update.callback), a
    ret

