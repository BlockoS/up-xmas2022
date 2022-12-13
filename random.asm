; 8-bit Xor-Shift random number generator.
; Created by Patrik Rak in 2008 and revised in 2011/2012.
; See http://www.worldofspectrum.org/forums/showthread.php?t=23070
random:     
    ld  hl,0xA280       ; yw -> zt
    ld  de,0xC0DE       ; xz -> yw
    ld  (random+4),hl   ; x = y, z = w
    ld  a,l             ; w = w ^ ( w << 3 )
    add a,a
    add a,a
    add a,a
    xor l
    ld  l,a
    ld  a,d             ; t = x ^ (x << 1)
    add a,a
    xor d
    ld  h,a
    rra                 ; t = t ^ (t >> 1) ^ w
    xor h
    xor l
    ld  h,e             ; y = z
    ld  l,a             ; w = t
    ld  (random+1),hl
    ret 