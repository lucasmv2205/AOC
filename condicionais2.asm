.data
	maior: .asciiz "o numero e maior que zero "
	menor: .asciiz "o numero e menor que zero "
	igual: .asciiz "o numero e igual a zero "

.text
	
	li $v0, 5 #leitura de inteiros
	syscall
	
	move $t0, $v0 #valor fornecido esta em t0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	imprimeIgual:
		li $v0, 4 #imprimir string
		la $a0, igual
		syscall
		
		#encerrar o programa
		li $v0, 10
		syscall
	
	imprimeMaior:
		li $v0, 4 #imprimir string
		la $a0, maior
		syscall
		
		#encerrar o programa
		li $v0, 10
		syscall
	
	imprimeMenor:
		li $v0, 4 #imprimir string
		la $a0, menor
		syscall
		
	
	