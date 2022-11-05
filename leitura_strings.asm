.data
	pergunta: .asciiz "qual o seu nome? "
	saudacao: .asciiz "ola "
	nome: .space 25
	
.text
	#impressao da pergunta
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#leitura da string
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	#imprimir saudacao
	li $v0, 4
	la $a0, saudacao
	syscall
	
	#imprimir o nome
	li $v0, 4
	la $a0, nome
	syscall