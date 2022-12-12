macro raster_update    
    ld sp, ix
    pop bc
    pop de
    pop hl
    exx
    pop bc
    pop de
    pop hl
    
    ld sp, iy
    push hl
    push de
    push bc
    exx
    push hl
    push de
    push bc
    
    ld bc, 12
    add ix, bc
mend

display_bitmap:
    ld (@sp_save), sp

@run:
    ld hl, vblnk
    ld a, 0x7f
@wait0:
    cp (hl)
    jp nc, @wait1
@wait1:
    cp (hl)
    jp c, @wait0

    xor a
@loop:
    ld iy, 0xd000+27            ; [todo] position
.bmp0 equ $+2                   ; [todo] addr of the 1st bitmap
    ld ix, 0x0000

    raster_update
    
    ld hl, vblnk
    ld a, 0x7f
@wait2:
    cp (hl)
    jp nc, @wait2

    ld a, 10                    ; [todo] define
    jp @line01
    
@line00:
    raster_update
@line01:
    raster_update
@line02:
    raster_update
@line03:
    raster_update
@line04:
    raster_update
@line05:
    raster_update
@line06:
    raster_update
@line07:
    raster_update   

    ld  c, 40
    add iy, bc                  ; next line

	dec a
	jp nz, @line00

    ld iy, 0x0000               ; [todo] deplacer la destination
.bmp1 equ $+2                   ; [todo] addr of the 2nd bitmap
    ld ix, 0x0000
    
    ld a, 10

@line10:
    raster_update
@line11:
    raster_update
@line12:
    raster_update
@line13:
    raster_update
@line14:
    raster_update
@line15:
    raster_update
@line16:
    raster_update
@line17:
    raster_update   

    ld  c, 40
    add iy, bc                  ; next line

	dec a
	jp nz, @line10

@sp_save equ $+1
    ld sp, 0x0000

    ret