.macro escogerValor puerto, valor
	mov r0, \puerto
	mov r1, \valor
	bl SetGpio
.endm
.macro pulso
	mov r0,#40
	bl Wait
	escogerValor #23,#0
.endm
.macro pausa valor
	ldr r0,=\valor
	bl Wait
.endm
/*
	#9,\RS
	#11,\D7
	#4,\D6
	#25,\D5
	#10,\D4
	#23,\E
*/
.globl inicializarLCD
inicializarLCD:
	push {lr}
	contador .req r5
	ldr r0,=19000
	bl Wait
	@comenzar en modo de 8 bits
	@secuencia_pausa #0,#0,#0,#1,#1,5000
	mov contador,#0
	bits8:
	cmp contador,#3
	bge bits4_1
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 5000
	add contador,contador,#1
	b bits8
	
	@iniciar en modo de 4 bits
	bits4_1:
	mov contador,#0
	bits4:
	cmp contador,#2
	bge bits4_2
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#0
	pulso
	pausa 5000
	add contador,contador,#1
	b bits4
	bits4_2:
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 5000
	
	@APAGAR DISPLAY
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 5000
	escogerValor #9,#0
	escogerValor #11,#1
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 5000
	
	@CLEAR DISPLAY
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 5000
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#1
	pulso
	pausa 5000
	
	@ENTRY MODE
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 5000
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#1
	escogerValor #25,#1
	escogerValor #10,#0
	pulso
	pausa 5000
	
	@ENCENDER DISPLAY
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 5000
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 5000
	.unreq contador
	pop {pc}
	