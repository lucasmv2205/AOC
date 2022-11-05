.data
	msg: .asciiz "Forneca um numero "
	par: .asciiz "o numero e par "
	impar: .asciiz "o numero e impar "

.text
	li $v0, 4 #imprimir string
	la $a0, msg
	syscall
	
	li $v0, 5 #leitura de inteiros
	syscall
	
	move $t0, $v0 #valor fornecido esta em t0
	
	li $t1, 2
	div $t0, $t1
	
	#resto em $s1
	mfhi $s1 #se $s1 for 0 eh par, se nao, eh impar
	
	beq $s1, $zero, imprimePar #se $s1 for zero, ira executar a partir de imprimePar
	
	li $v0, 4 #imprimir string
	la $a0, impar
	syscall
	
	#encerrar o programa
	li $v0, 10
	syscall
	
	imprimePar:
		li $v0, 4 #imprimir string
		la $a0, par
		syscall
		
	
		
	
	