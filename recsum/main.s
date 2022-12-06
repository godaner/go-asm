#include "textflag.h"
#define FUNCDATA_ArgsPointerMaps 0 /* garbage collector blocks */
#define FUNCDATA_LocalsPointerMaps 1
#define FUNCDATA_InlTree 2

#define NO_LOCAL_POINTERS FUNCDATA $FUNCDATA_LocalsPointerMaps, runtime·no_pointers_stackmap(SB)
TEXT ·RecSum(SB), $16-16
    NO_LOCAL_POINTERS
    MOVQ ·src+0(FP),AX
    CMPQ AX,$0
    JG REC
    MOVQ $0,·ret+8(FP)
    RET
REC:
    SUBQ $1,AX
    MOVQ AX,0(SP)
    MOVQ $0,8(SP)
    CALL ·RecSum(SB)
    MOVQ 8(SP),BX
    MOVQ ·src+0(FP),AX
    ADDQ AX,BX
    MOVQ BX,·ret+8(FP)
    RET

