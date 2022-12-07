#include "textflag.h"
TEXT ·funcAddr(SB),NOSPLIT,$0-8
    LEAQ ·closureFunc(SB),AX
    MOVQ AX,·ret+0(FP)
    RET
TEXT ·ptrToFunc(SB),NOSPLIT,$0-16
    MOVQ ·arg+0(FP),AX
    MOVQ AX,·arg+8(FP)
    RET

TEXT ·closureFunc(SB),NOSPLIT|NEEDCTXT,$0-8
    MOVQ 8(DX),AX
    IMULQ $2,AX
    MOVQ AX,8(DX)
    MOVQ AX,·ret+0(FP)
    RET


