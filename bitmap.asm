macro raster_update    
    ld sp, ix               ; 10
    pop bc                  ; 10
    pop de                  ; 10
    pop hl                  ; 10
    exx                     ; 4
    pop bc                  ; 10
    pop de                  ; 10
    pop hl                  ; 10
    
    ld sp, iy               ; 10
    push hl                 ; 11
    push de                 ; 11
    push bc                 ; 11
    exx                     ; 4
    push hl                 ; 11
    push de                 ; 11
    push bc                 ; 11
    
    ld bc, 12               ; 10
    add ix, bc              ; 15
mend                        ; = 179

display_attr:
    ld (@sp_save3), sp

    ld iy, 0xd800+39
display_attr.src equ $+2
    ld ix, 0x0000

    ld a, 11
.draw_attributes:
    raster_update   

    ld  c, 40
    add iy, bc

	dec a
	jp nz, .draw_attributes

@sp_save3 equ $+1
    ld sp, 0x0000

    ret

display_bitmap:
    ld (@sp_save2), sp

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
    ld iy, 0xd000+39
display_bitmap.src equ $+2
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

@sp_save2 equ $+1
    ld sp, 0x0000

    ret