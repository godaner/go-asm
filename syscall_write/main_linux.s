#include "textflag.h"
TEXT ·syscall_write(SB),NOSPLIT,$32
    MOVQ $1, AX
    MOVQ fd+0(FP),       DI
    MOVQ msg_data+8(FP), SI
    MOVQ msg_len+16(FP), DX
    SYSCALL
    MOVQ AX, ret+24(FP)
    RET
