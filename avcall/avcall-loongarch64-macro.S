	.file	"avcall-loongarch64.c"
	.text
	.align	2
	.globl	avcall_call
	.type	avcall_call, @function
avcall_call:
.LFB0 = .
	.cfi_startproc
	addi.d	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	st.d	$fp,$sp,32
	st.d	$s0,$sp,24
	st.d	$s1,$sp,16
	st.d	$s2,$sp,8
	stptr.d	$s3,$sp,0
	st.d	$ra,$sp,40
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 1, -8
	addi.d	$fp,$sp,48
	.cfi_def_cfa 22, 0
	ld.d	$s1,$a0,48
	ld.d	$t0,$a0,40
	addi.w	$t1,$r0,8			# 0x8
	ldptr.w	$s3,$a0,64
	sub.d	$t0,$t0,$s1
	srai.d	$t0,$t0,3
	slli.w	$s2,$t0,0
	or	$s0,$a0,$r0
	addi.d	$sp,$sp,-2048
	ble	$s2,$t1,.L72
	addi.w	$a2,$t0,-9
	or	$t2,$sp,$r0
	bstrpick.d	$a2,$a2,31,0
	alsl.d	$a2,$a2,$zero,3
	addi.d	$a2,$a2,8
	addi.d	$a1,$s1,64
	or	$a0,$t2,$r0
	bl	%plt(memcpy)
	ldptr.d	$a0,$s1,0
.L5:
	addi.w	$t0,$r0,2			# 0x2
	ld.d	$a1,$s1,8
	beq	$s2,$t0,.L6
	addi.w	$t0,$r0,3			# 0x3
	ld.d	$a2,$s1,16
	beq	$s2,$t0,.L6
	addi.w	$t0,$r0,4			# 0x4
	ld.d	$a3,$s1,24
	beq	$s2,$t0,.L6
	addi.w	$t0,$r0,5			# 0x5
	ld.d	$a4,$s1,32
	beq	$s2,$t0,.L6
	addi.w	$t0,$r0,6			# 0x6
	ld.d	$a5,$s1,40
	beq	$s2,$t0,.L6
	addi.w	$t0,$r0,7			# 0x7
	ld.d	$a6,$s1,48
	beq	$s2,$t0,.L6
	ld.d	$a7,$s1,56
.L6:
	beqz	$s3,.L8
	ldptr.w	$t0,$s0,72
	andi	$t1,$t0,1
	beqz	$t1,.L9
	fld.d	$f0,$s0,112
.L10:
	addi.w	$t1,$r0,1			# 0x1
	beq	$s3,$t1,.L8
	andi	$t1,$t0,2
	bnez	$t1,.L73
	ldptr.w	$t1,$s0,68
	andi	$t1,$t1,2
	beqz	$t1,.L13
	fld.s	$f1,$s0,80
.L13:
	addi.w	$t1,$r0,2			# 0x2
	beq	$s3,$t1,.L8
	andi	$t1,$t0,4
	beqz	$t1,.L14
	fld.d	$f2,$s0,128
.L15:
	addi.w	$t1,$r0,3			# 0x3
	beq	$s3,$t1,.L8
	andi	$t1,$t0,8
	beqz	$t1,.L16
	fld.d	$f3,$s0,136
.L17:
	addi.w	$t1,$r0,4			# 0x4
	beq	$s3,$t1,.L8
	andi	$t1,$t0,16
	bnez	$t1,.L74
	ldptr.w	$t1,$s0,68
	andi	$t1,$t1,16
	beqz	$t1,.L19
	fld.s	$f4,$s0,92
.L19:
	addi.w	$t1,$r0,5			# 0x5
	beq	$s3,$t1,.L8
	andi	$t1,$t0,32
	beqz	$t1,.L20
	fld.d	$f5,$s0,152
.L21:
	addi.w	$t1,$r0,6			# 0x6
	beq	$s3,$t1,.L8
	andi	$t1,$t0,64
	beqz	$t1,.L22
	fld.d	$f6,$s0,160
.L23:
	addi.w	$t1,$r0,7			# 0x7
	beq	$s3,$t1,.L8
	andi	$t0,$t0,128
	beqz	$t0,.L24
	fld.d	$f7,$s0,168
.L8:
	ldptr.w	$t0,$s0,24
	addi.w	$t1,$r0,13			# 0xd
	ld.d	$t2,$s0,8
	beq	$t0,$t1,.L75
	addi.w	$t1,$r0,14			# 0xe
	beq	$t0,$t1,.L76
	jirl	$ra,$t2,0
	ldptr.w	$t0,$s0,24
	addi.w	$t1,$r0,1			# 0x1
	beq	$t0,$t1,.L26
	addi.w	$t1,$r0,16			# 0x10
	bgtu	$t0,$t1,.L26
	la.local	$t1,.L29
	slli.d	$t0,$t0,3
	ldx.d	$t0,$t1,$t0
	add.d	$t1,$t1,$t0
	jr	$t1
	.section	.rodata
	.align	3
	.align	2
.L29:
	.dword	.L26-.L29
	.dword	.L26-.L29
	.dword	.L37-.L29
	.dword	.L37-.L29
	.dword	.L37-.L29
	.dword	.L35-.L29
	.dword	.L35-.L29
	.dword	.L33-.L29
	.dword	.L33-.L29
	.dword	.L30-.L29
	.dword	.L30-.L29
	.dword	.L30-.L29
	.dword	.L30-.L29
	.dword	.L26-.L29
	.dword	.L26-.L29
	.dword	.L30-.L29
	.dword	.L28-.L29
	.text
.L9:
	ldptr.w	$t1,$s0,68
	andi	$t1,$t1,1
	beqz	$t1,.L10
	fld.s	$f0,$s0,76
	b	.L10
.L76:
	ld.d	$s0,$s0,16
	jirl	$ra,$t2,0
	fst.d	$f0,$s0,0
.L26:
	addi.d	$sp,$fp,-48
	.cfi_remember_state
	.cfi_def_cfa 3, 48
	ld.d	$ra,$sp,40
	.cfi_restore 1
	ld.d	$fp,$sp,32
	.cfi_restore 22
	ld.d	$s0,$sp,24
	.cfi_restore 23
	ld.d	$s1,$sp,16
	.cfi_restore 24
	ld.d	$s2,$sp,8
	.cfi_restore 25
	ldptr.d	$s3,$sp,0
	.cfi_restore 26
	or	$a0,$zero,$r0
	addi.d	$sp,$sp,48
	.cfi_def_cfa_offset 0
	jr	$ra
.L72:
	.cfi_restore_state
	ble	$s2,$r0,.L6
	addi.w	$t0,$r0,1			# 0x1
	ldptr.d	$a0,$s1,0
	bne	$s2,$t0,.L5
	b	.L6
.L75:
	ld.d	$s0,$s0,16
	jirl	$ra,$t2,0
	fst.s	$f0,$s0,0
	b	.L26
.L73:
	fld.d	$f1,$s0,120
	b	.L13
.L30:
	ld.d	$t0,$s0,16
	stptr.d	$a0,$t0,0
	b	.L26
.L37:
	ld.d	$t0,$s0,16
	st.b	$a0,$t0,0
	b	.L26
.L14:
	ldptr.w	$t1,$s0,68
	andi	$t1,$t1,4
	beqz	$t1,.L15
	fld.s	$f2,$s0,84
	b	.L15
.L16:
	ldptr.w	$t1,$s0,68
	andi	$t1,$t1,8
	beqz	$t1,.L17
	fld.s	$f3,$s0,88
	b	.L17
.L74:
	fld.d	$f4,$s0,144
	b	.L19
.L35:
	ld.d	$t0,$s0,16
	st.h	$a0,$t0,0
	b	.L26
.L33:
	ld.d	$t0,$s0,16
	stptr.w	$a0,$t0,0
	b	.L26
.L28:
	ldptr.w	$t0,$s0,0
	andi	$t0,$t0,512
	beqz	$t0,.L26
	ld.d	$s1,$s0,32
	addi.w	$t0,$r0,15			# 0xf
	addi.d	$t1,$s1,-1
	bgtu	$t1,$t0,.L26
	ld.d	$t0,$s0,16
	addi.w	$t4,$r0,-8			# 0xfffffffffffffff8
	addi.w	$t1,$r0,1			# 0x1
	and	$t4,$t0,$t4
	ldptr.d	$t5,$t4,0
	andi	$t0,$t0,7
	slli.w	$t8,$t0,3
	add.d	$s2,$s1,$t0
	sll.d	$t7,$a0,$t8
	addi.w	$s0,$r0,8			# 0x8
	sll.d	$t1,$t1,$t8
	xor	$t7,$t7,$t5
	slli.w	$t6,$s2,3
	bgtu	$s1,$s0,.L40
	bgtu	$s2,$s0,.L41
	addi.w	$t6,$t6,-1
	addi.w	$t0,$r0,2			# 0x2
	sll.d	$t0,$t0,$t6
	sub.d	$t0,$t0,$t1
	and	$t0,$t0,$t7
	xor	$t0,$t0,$t5
	stptr.d	$t0,$t4,0
	b	.L26
.L20:
	ldptr.w	$t1,$s0,68
	andi	$t1,$t1,32
	beqz	$t1,.L21
	fld.s	$f5,$s0,96
	b	.L21
.L22:
	ldptr.w	$t1,$s0,68
	andi	$t1,$t1,64
	beqz	$t1,.L23
	fld.s	$f6,$s0,100
	b	.L23
.L24:
	ldptr.w	$t0,$s0,68
	andi	$t0,$t0,128
	beqz	$t0,.L8
	fld.s	$f7,$s0,104
	b	.L8
.L40:
	sub.d	$t1,$zero,$t1
	and	$t1,$t1,$t7
	xor	$t1,$t1,$t5
	stptr.d	$t1,$t4,0
	addi.w	$t1,$r0,16			# 0x10
	sub.d	$t0,$s0,$t0
	sll.d	$t8,$a1,$t8
	bgtu	$s2,$t1,.L42
	slli.w	$t0,$t0,2
	ld.d	$t3,$t4,8
	sra.d	$t2,$a0,$t0
	sra.d	$t0,$t2,$t0
	addi.w	$t6,$t6,-65
	addi.w	$t1,$r0,2			# 0x2
	or	$t0,$t0,$t8
	sll.d	$t1,$t1,$t6
	xor	$t0,$t0,$t3
	addi.d	$t1,$t1,-1
	and	$t0,$t0,$t1
	xor	$t0,$t0,$t3
	st.d	$t0,$t4,8
	b	.L26
.L41:
	ld.d	$t3,$t4,8
	sub.d	$t0,$s0,$t0
	slli.w	$t0,$t0,3
	addi.w	$t6,$t6,-65
	addi.w	$t2,$r0,2			# 0x2
	sra.d	$t0,$a0,$t0
	sll.d	$t2,$t2,$t6
	sub.d	$t1,$zero,$t1
	xor	$t0,$t0,$t3
	addi.d	$t2,$t2,-1
	and	$t1,$t1,$t7
	and	$t0,$t0,$t2
	xor	$t1,$t1,$t5
	xor	$t0,$t0,$t3
	stptr.d	$t1,$t4,0
	st.d	$t0,$t4,8
	b	.L26
.L42:
	ld.d	$t7,$t4,16
	slli.w	$t0,$t0,3
	addi.w	$t1,$t6,-129
	addi.w	$t5,$r0,2			# 0x2
	sll.d	$t5,$t5,$t1
	sra.d	$t1,$a1,$t0
	addi.d	$t3,$t5,-1
	xor	$t1,$t1,$t7
	sra.d	$t0,$a0,$t0
	and	$t1,$t3,$t1
	or	$t0,$t0,$t8
	xor	$t1,$t1,$t7
	st.d	$t0,$t4,8
	st.d	$t1,$t4,16
	b	.L26
	.cfi_endproc
.LFE0:
	.size	avcall_call, .-avcall_call
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
