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
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#1
	pulso
	pausa 100
pop {pc}
	
.globl dos
dos:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#0
	pulso
	pausa 100
pop {pc}

.globl tres
tres:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
pop {pc}

.globl cuatro
cuatro:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#1
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 100
pop {pc}

.globl cinco
cinco:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#1
	escogerValor #25,#0
	escogerValor #10,#1
	pulso
	pausa 100
pop {pc}

.globl seis
seis:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#1
	escogerValor #25,#1
	escogerValor #10,#0
	pulso
	pausa 100
pop {pc}

.globl siete
siete:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#1
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
pop {pc}

.globl ocho
ocho:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#1
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#0
	pulso
	pausa 100
pop {pc}

.globl nueve
nueve:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#1
	escogerValor #4,#0
	escogerValor #25,#0
	escogerValor #10,#1
	pulso
	pausa 100
pop {pc}

.globl suma
suma:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#0
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#1
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
pop {pc}

.globl resta
resta:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#0
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#1
	escogerValor #4,#1
	escogerValor #25,#0
	escogerValor #10,#1
	pulso
	pausa 100
pop {pc}

.globl igual
igual:
	push {lr}
	escogerValor #9,#1
	escogerValor #11,#0
	escogerValor #4,#0
	escogerValor #25,#1
	escogerValor #10,#1
	pulso
	pausa 100
	escogerValor #9,#1
	escogerValor #11,#1
	escogerValor #4,#1
	escogerValor #25,#0
	escogerValor #10,#1
	pulso
	pausa 100
pop {pc}

