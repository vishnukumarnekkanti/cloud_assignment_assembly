.LC0:
	.string	"The sum is %d\n"
	.text
	.globl	main

main:
	
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp

	movl	$3, -12(%rbp)
	movl	$4, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-12(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf

	leave

