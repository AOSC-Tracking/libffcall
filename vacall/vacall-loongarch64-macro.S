	.file	"vacall-loongarch64.c"
	.text
	.align	2
	.globl	vacall_receiver
	.type	vacall_receiver, @function
vacall_receiver:
.LFB0 = .
	.cfi_startproc
	addi.d	$sp,$sp,-272
	.cfi_def_cfa_offset 272
	st.d	$ra,$sp,248
	st.d	$fp,$sp,240
	la.global	$t0,vacall_function
	.cfi_offset 1, -24
	.cfi_offset 22, -32
	addi.d	$fp,$sp,256
	.cfi_def_cfa 22, 16
	addi.d	$t1,$fp,16
	ldptr.d	$t0,$t0,0
	st.d	$a0,$fp,-184
	st.d	$a7,$fp,8
	st.d	$a1,$fp,-176
	st.d	$a2,$fp,-168
	st.d	$a3,$fp,-160
	st.d	$a4,$fp,-152
	st.d	$a5,$fp,-144
	st.d	$a6,$fp,-136
	st.d	$a7,$fp,-128
	fst.s	$f0,$fp,-116
	fst.s	$f1,$fp,-112
	fst.s	$f2,$fp,-108
	fst.s	$f3,$fp,-104
	fst.s	$f4,$fp,-100
	fst.s	$f5,$fp,-96
	fst.s	$f6,$fp,-92
	fst.s	$f7,$fp,-88
	fst.d	$f0,$fp,-80
	fst.d	$f1,$fp,-72
	fst.d	$f2,$fp,-64
	fst.d	$f3,$fp,-56
	fst.d	$f4,$fp,-48
	fst.d	$f5,$fp,-40
	fst.d	$f6,$fp,-32
	fst.d	$f7,$fp,-24
	st.d	$t1,$fp,-224
	st.w	$zero,$fp,-248
	st.d	$zero,$fp,-216
	st.w	$zero,$fp,-208
	addi.d	$a0,$fp,-248
	st.w	$zero,$fp,-192
	st.w	$zero,$fp,-120
	jirl	$ra,$t0,0
	ldptr.w	$t0,$fp,-208
	beqz	$t0,.L1
	addi.w	$t1,$r0,15			# 0xf
	bgtu	$t0,$t1,.L1
	slli.d	$t0,$t0,3
	la.local	$t1,.L4
	ldx.d	$t0,$t1,$t0
	jr	$t0
	.section	.rodata
	.align	3
	.align	2
.L4:
	.dword	.L1
	.dword	.L15
	.dword	.L15
	.dword	.L14
	.dword	.L13
	.dword	.L12
	.dword	.L11
	.dword	.L10
	.dword	.L5
	.dword	.L5
	.dword	.L5
	.dword	.L5
	.dword	.L7
	.dword	.L6
	.dword	.L5
	.dword	.L3
	.text
.L5:
	ld.d	$a0,$fp,-240
.L1:
	ld.d	$ra,$sp,248
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$fp,$sp,240
	.cfi_restore 22
	addi.d	$sp,$sp,272
	.cfi_def_cfa 3, 0
	jr	$ra
.L15:
	.cfi_restore_state
	ld.b	$a0,$fp,-240
	b	.L1
.L10:
	ld.wu	$a0,$fp,-240
	b	.L1
.L14:
	ld.bu	$a0,$fp,-240
	b	.L1
.L13:
	ld.h	$a0,$fp,-240
	b	.L1
.L12:
	ld.hu	$a0,$fp,-240
	b	.L1
.L11:
	ldptr.w	$a0,$fp,-240
	b	.L1
.L6:
	fld.d	$f0,$fp,-240
	b	.L1
.L7:
	fld.s	$f0,$fp,-240
	b	.L1
.L3:
	ldptr.w	$t0,$fp,-248
	andi	$t0,$t0,1024
	beqz	$t0,.L1
	ld.d	$t1,$fp,-200
	addi.w	$t0,$r0,15			# 0xf
	addi.d	$t2,$t1,-1
	bgtu	$t2,$t0,.L1
	ld.d	$t2,$fp,-216
	addi.w	$t3,$r0,-8			# 0xfffffffffffffff8
	addi.w	$t0,$r0,8			# 0x8
	andi	$t4,$t2,7
	add.d	$t5,$t1,$t4
	and	$t2,$t2,$t3
	ldptr.d	$t7,$t2,0
	slli.w	$t3,$t5,3
	slli.w	$t6,$t4,3
	bgtu	$t1,$t0,.L17
	bgtu	$t5,$t0,.L18
	addi.w	$t3,$t3,-1
	addi.w	$a0,$r0,2			# 0x2
	sll.d	$a0,$a0,$t3
	addi.d	$a0,$a0,-1
	and	$a0,$a0,$t7
	sra.d	$a0,$a0,$t6
	b	.L1
.L17:
	addi.w	$t1,$r0,16			# 0x10
	ld.d	$t8,$t2,8
	sra.d	$t7,$t7,$t6
	sub.d	$t0,$t0,$t4
	bgtu	$t5,$t1,.L19
	addi.w	$t3,$t3,-65
	addi.w	$a1,$r0,2			# 0x2
	sll.d	$a1,$a1,$t3
	addi.d	$a1,$a1,-1
	and	$a1,$a1,$t8
	slli.w	$t0,$t0,2
	sll.d	$a0,$a1,$t0
	sll.d	$a0,$a0,$t0
	or	$a0,$a0,$t7
	sra.d	$a1,$a1,$t6
	b	.L1
.L18:
	ld.d	$t2,$t2,8
	addi.w	$t3,$t3,-65
	addi.w	$t1,$r0,2			# 0x2
	sll.d	$t1,$t1,$t3
	addi.d	$t1,$t1,-1
	sub.d	$t0,$t0,$t4
	and	$t1,$t1,$t2
	slli.w	$t0,$t0,3
	sll.d	$t0,$t1,$t0
	sra.d	$t7,$t7,$t6
	or	$a0,$t0,$t7
	b	.L1
.L19:
	ld.d	$t2,$t2,16
	addi.w	$t3,$t3,-129
	addi.w	$t1,$r0,2			# 0x2
	sll.d	$t1,$t1,$t3
	addi.d	$t1,$t1,-1
	slli.w	$t0,$t0,3
	and	$t1,$t1,$t2
	sll.d	$a0,$t8,$t0
	sll.d	$t0,$t1,$t0
	sra.d	$t8,$t8,$t6
	or	$a0,$a0,$t7
	or	$a1,$t0,$t8
	b	.L1
	.cfi_endproc
.LFE0:
	.size	vacall_receiver, .-vacall_receiver
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
