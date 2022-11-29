TEXT ·a(SB), $16-16
    MOVQ ·helloworld+0(SB), AX; MOVQ AX, ·c+0(FP)
    MOVQ ·helloworld+8(SB), BX; MOVQ BX, ·c+8(FP)
    RET
