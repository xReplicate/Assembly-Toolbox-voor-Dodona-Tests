# Vereenvoudig Narayana 
Vereenvoudig volgende Narayana functie. De bedoeling is het aantal cycli (van uitvoeren) te verminderen, maar dezelfde functionaliteit te behouden. Je inzending wordt dus geevalueerd op zowel correctheid als snelheid.

```asm
narayana:
.LFB6:
	endbr32
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, -20(%ebp)
	cmpl	$2, 8(%ebp)
	jg	.L2
	movl	$1, -20(%ebp)
	jmp	.L3
.L2:
	movl	8(%ebp), %eax
	subl	$1, %eax
	subl	$12, %esp
	pushl	%eax
	call	narayana
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	subl	$3, %eax
	subl	$12, %esp
	pushl	%eax
	call	narayana
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
.L3:
	movl	-20(%ebp), %eax
	leave
	ret
```