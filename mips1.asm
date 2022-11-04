.data #dados na memoria principal
	msg: .asciiz "Ola mundo" #mensagem a ser exibida ao usuario

.text #area para instruçoes do programa
	
	#instruçao para impressão de string
	li $v0, 4
	La $a0, msg #indicar o endereco em que esta a mensagem
	syscall #faça, imprima!
