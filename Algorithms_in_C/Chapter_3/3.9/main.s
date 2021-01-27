	.file	"main.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"->%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "main.c"
	.loc 1 12 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 1 13 0
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -48(%rbp)
	.loc 1 14 0
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -44(%rbp)
	.loc 1 26 0
	movl	$16, %edi
	call	malloc
	movq	%rax, -24(%rbp)
	.loc 1 27 0
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 1 29 0
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 30 0
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	.loc 1 31 0
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 35 0
	movl	$2, -60(%rbp)
	jmp	.L2
.L3:
	.loc 1 36 0 discriminator 3
	movl	$16, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	.loc 1 37 0 discriminator 3
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 38 0 discriminator 3
	movq	-16(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 39 0 discriminator 3
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 40 0 discriminator 3
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 35 0 discriminator 3
	addl	$1, -60(%rbp)
.L2:
	.loc 1 35 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.L3
	.loc 1 45 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 46 0
	movl	$0, -60(%rbp)
	jmp	.L4
.L9:
	.loc 1 48 0
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 49 0
	movl	$1, -56(%rbp)
	jmp	.L5
.L6:
	.loc 1 50 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 51 0 discriminator 3
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 49 0 discriminator 3
	addl	$1, -56(%rbp)
.L5:
	.loc 1 49 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax
	subl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.L6
	.loc 1 53 0 is_stmt 1
	movl	$10, %edi
	call	putchar
	.loc 1 54 0
	movl	$1, -52(%rbp)
	jmp	.L7
.L8:
	.loc 1 56 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 54 0 discriminator 3
	addl	$1, -52(%rbp)
.L7:
	.loc 1 54 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L8
	.loc 1 58 0 is_stmt 1 discriminator 2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 59 0 discriminator 2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 60 0 discriminator 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	.loc 1 46 0 discriminator 2
	addl	$1, -60(%rbp)
.L4:
	.loc 1 46 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.L9
	.loc 1 62 0 is_stmt 1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 64 0
	movl	$0, %eax
	.loc 1 65 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x189
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF22
	.byte	0xc
	.long	.LASF23
	.long	.LASF24
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF25
	.byte	0x1
	.byte	0x6
	.long	0x92
	.uleb128 0x4
	.byte	0x8
	.long	0x98
	.uleb128 0x6
	.long	.LASF26
	.byte	0x10
	.byte	0x1
	.byte	0x7
	.long	0xbd
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x8
	.long	0x34
	.byte	0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x9
	.long	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0xb
	.long	0x34
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x186
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.byte	0xb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0xb
	.long	0x186
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xa
	.long	.LASF15
	.byte	0x1
	.byte	0xd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0xe
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0xf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0xf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"k"
	.byte	0x1
	.byte	0xf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x1a
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x1b
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0x1c
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0x1c
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x1d
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"next"
.LASF11:
	.string	"item"
.LASF19:
	.string	"node_x"
.LASF2:
	.string	"unsigned char"
.LASF0:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"main"
.LASF15:
	.string	"total_number"
.LASF20:
	.string	"node_free"
.LASF16:
	.string	"skip_number"
.LASF22:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -fstack-protector-strong"
.LASF1:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF17:
	.string	"node_1"
.LASF25:
	.string	"link"
.LASF18:
	.string	"node_pre"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF23:
	.string	"main.c"
.LASF8:
	.string	"char"
.LASF21:
	.string	"node_now"
.LASF5:
	.string	"short int"
.LASF14:
	.string	"argv"
.LASF26:
	.string	"node"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF24:
	.string	"/home/dylan/learning/Algorithms_in_C/Chapter_2/3.9"
.LASF13:
	.string	"argc"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
