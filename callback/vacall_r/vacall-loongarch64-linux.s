	.file	"vacall-loongarch64.c"
	.text
	.align	2
	.type	callback_receiver, @function
callback_receiver:
.LFB0 = .
	.cfi_startproc
	addi.d	$sp,$sp,-288
	.cfi_def_cfa_offset 288
	st.d	$ra,$sp,264
	st.d	$fp,$sp,256
	st.d	$s0,$sp,248
	.cfi_offset 1, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -40
	addi.d	$fp,$sp,272
	.cfi_def_cfa 22, 16
	addi.d	$t1,$fp,16
	ldptr.d	$t0,$t8,0
	st.d	$a7,$fp,8
	st.d	$a1,$fp,-192
	st.d	$a2,$fp,-184
	st.d	$a3,$fp,-176
	st.d	$a4,$fp,-168
	st.d	$a5,$fp,-160
	st.d	$a6,$fp,-152
	st.d	$a7,$fp,-144
	fst.s	$f0,$fp,-132
	fst.s	$f1,$fp,-128
	fst.s	$f2,$fp,-124
	fst.s	$f3,$fp,-120
	fst.s	$f4,$fp,-116
	fst.s	$f5,$fp,-112
	fst.s	$f6,$fp,-108
	fst.s	$f7,$fp,-104
	fst.d	$f0,$fp,-96
	fst.d	$f1,$fp,-88
	fst.d	$f2,$fp,-80
	fst.d	$f3,$fp,-72
	fst.d	$f4,$fp,-64
	fst.d	$f5,$fp,-56
	fst.d	$f6,$fp,-48
	fst.d	$f7,$fp,-40
	st.d	$t1,$fp,-240
	st.d	$a0,$fp,-200
	st.w	$zero,$fp,-264
	st.d	$zero,$fp,-232
	ld.d	$a0,$t8,8
	st.w	$zero,$fp,-224
	st.w	$zero,$fp,-208
	st.w	$zero,$fp,-136
	addi.d	$a1,$fp,-264
	jirl	$ra,$t0,0
	ldptr.w	$t0,$fp,-224
	beqz	$t0,.L1
	addi.w	$t1,$r0,15			# 0xf
	bgtu	$t0,$t1,.L1
	la.local	$t1,.L4
	slli.d	$t0,$t0,3
	ldx.d	$t0,$t1,$t0
	add.d	$t1,$t1,$t0
	jr	$t1
	.section	.rodata
	.align	3
	.align	2
.L4:
	.dword	.L1-.L4
	.dword	.L15-.L4
	.dword	.L15-.L4
	.dword	.L14-.L4
	.dword	.L13-.L4
	.dword	.L12-.L4
	.dword	.L11-.L4
	.dword	.L10-.L4
	.dword	.L5-.L4
	.dword	.L5-.L4
	.dword	.L5-.L4
	.dword	.L5-.L4
	.dword	.L7-.L4
	.dword	.L6-.L4
	.dword	.L5-.L4
	.dword	.L3-.L4
	.text
.L5:
	ld.d	$a0,$fp,-256
.L1:
	ld.d	$ra,$sp,264
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$fp,$sp,256
	.cfi_restore 22
	ld.d	$s0,$sp,248
	.cfi_restore 23
	addi.d	$sp,$sp,288
	.cfi_def_cfa 3, 0
	jr	$ra
.L15:
	.cfi_restore_state
	ld.b	$a0,$fp,-256
	b	.L1
.L10:
	ld.wu	$a0,$fp,-256
	b	.L1
.L14:
	ld.bu	$a0,$fp,-256
	b	.L1
.L13:
	ld.h	$a0,$fp,-256
	b	.L1
.L12:
	ld.hu	$a0,$fp,-256
	b	.L1
.L11:
	ldptr.w	$a0,$fp,-256
	b	.L1
.L6:
	fld.d	$f0,$fp,-256
	b	.L1
.L7:
	fld.s	$f0,$fp,-256
	b	.L1
.L3:
	ldptr.w	$t0,$fp,-264
	andi	$t0,$t0,1024
	beqz	$t0,.L1
	ld.d	$t0,$fp,-216
	addi.w	$t1,$r0,15			# 0xf
	addi.d	$t2,$t0,-1
	bgtu	$t2,$t1,.L1
	ld.d	$t1,$fp,-232
	addi.w	$t3,$r0,-8			# 0xfffffffffffffff8
	addi.w	$s0,$r0,8			# 0x8
	andi	$t2,$t1,7
	add.d	$t4,$t0,$t2
	and	$t1,$t1,$t3
	ldptr.d	$t5,$t1,0
	slli.w	$t3,$t4,3
	slli.w	$t6,$t2,3
	bgtu	$t0,$s0,.L17
	bgtu	$t4,$s0,.L18
	addi.w	$t3,$t3,-1
	addi.w	$a0,$r0,2			# 0x2
	sll.d	$a0,$a0,$t3
	addi.d	$a0,$a0,-1
	and	$a0,$a0,$t5
	sra.d	$a0,$a0,$t6
	b	.L1
.L17:
	addi.w	$t0,$r0,16			# 0x10
	ld.d	$t7,$t1,8
	sra.d	$t5,$t5,$t6
	sub.d	$s0,$s0,$t2
	bgtu	$t4,$t0,.L19
	addi.w	$t3,$t3,-65
	addi.w	$a1,$r0,2			# 0x2
	sll.d	$a1,$a1,$t3
	addi.d	$a1,$a1,-1
	and	$a1,$a1,$t7
	slli.w	$s0,$s0,2
	sll.d	$a0,$a1,$s0
	sll.d	$a0,$a0,$s0
	or	$a0,$a0,$t5
	sra.d	$a1,$a1,$t6
	b	.L1
.L18:
	ld.d	$t4,$t1,8
	addi.w	$t3,$t3,-65
	addi.w	$t0,$r0,2			# 0x2
	sll.d	$t0,$t0,$t3
	addi.d	$t0,$t0,-1
	sub.d	$t1,$s0,$t2
	and	$t0,$t0,$t4
	slli.w	$t1,$t1,3
	sll.d	$t0,$t0,$t1
	sra.d	$t5,$t5,$t6
	or	$a0,$t0,$t5
	b	.L1
.L19:
	ld.d	$t2,$t1,16
	addi.w	$t3,$t3,-129
	addi.w	$t0,$r0,2			# 0x2
	sll.d	$t0,$t0,$t3
	addi.d	$t0,$t0,-1
	slli.w	$t1,$s0,3
	and	$t0,$t0,$t2
	sll.d	$a0,$t7,$t1
	sll.d	$t0,$t0,$t1
	sra.d	$t7,$t7,$t6
	or	$a0,$a0,$t5
	or	$a1,$t0,$t7
	b	.L1
	.cfi_endproc
.LFE0:
	.size	callback_receiver, .-callback_receiver
	.align	2
	.globl	callback_get_receiver
	.type	callback_get_receiver, @function
callback_get_receiver:
.LFB1 = .
	.cfi_startproc
	addi.d	$sp,$sp,-16
	.cfi_def_cfa_offset 16
	st.d	$fp,$sp,8
	.cfi_offset 22, -8
	addi.d	$fp,$sp,16
	.cfi_def_cfa 22, 0
	ld.d	$fp,$sp,8
	.cfi_restore 22
	la.local	$a0,callback_receiver
	addi.d	$sp,$sp,16
	.cfi_def_cfa_register 3
	jr	$ra
	.cfi_endproc
.LFE1:
	.size	callback_get_receiver, .-callback_get_receiver
	.ident	"GCC: (GNU) 12.0.1 20220317 (experimental)"
	.section	.note.GNU-stack,"",@progbits
