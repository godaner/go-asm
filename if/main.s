TEXT ·If(SB), $0-32
	MOVQ ·ok+0*8(FP),CX
	MOVQ ·a+1*8(FP),AX
	MOVQ ·b+2*8(FP),BX
	CMPQ CX,$0
	JZ L
	MOVQ AX,·c+3*8(FP)
	RET
L:
	MOVQ BX,·c+3*8(FP)
	RET
