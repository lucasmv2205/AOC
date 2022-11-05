.data
	msg: .asciiz "Informe um numero double? "
	zero: .double 0.0
	
.text
	#impressao da pergunta
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 7 #leitura de double
	syscall #valor lido estara em $f0
	
	ldc1 $f2, zero
	add.d $f12, $f2, $f0
	
	li $v0, 3
	syscall 