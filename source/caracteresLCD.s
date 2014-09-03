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
.globl uno
uno:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#0
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#1
	pulso
	pausa 100
	
	pop {pc}
