.section .init
.globl _start
_start:


@ Puertos GPIO para LCD: 9 (RS), 11(D7),4(D6), 0(D5),	10(D4), 23(E)
@boton #1 gpio#17
@boton #2 gpio#14
@boton #3 gpio#15
@boton #4 gpio#18
@boton #5 gpio#24
@boton suma gpio#8
@boton resta gpio#25
@boton clear gpio#1
b main
.macro Funcion puerto,valor
	mov r0, \puerto
	mov r1, \valor
	bl SetGpioFunction
.endm
/*
	#9,\RS
	#11,\D7
	#4,\D6
	#25,\D5
	#10,\D4
	#23,\E
*/
main:
	Funcion #9,#1 @RS en escritura
	Funcion #11,#1 @D7 en escritura
	Funcion #4,#1 @D6 en escritura
	Funcion #25,#1 @D5 en escritura
	Funcion #10,#1 @D4 en escritura
	Funcion #23,#1 @E en escritura
	
	bl inicializarLCD
	bl escogerMemoria
	bl uno
	bl igual
	ciclo:
	
	b ciclo
	