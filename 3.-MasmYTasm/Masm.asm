;masa
.model small; definiendo el tipo de model, corto (64 kb)

.data ; se definen las variables que se van a ocupar, es el segmento de los datos

mensaje db 'hola, soy mitch$'; ya no necesitamos colocar la longitud del mensaje

.code
empieza:;definimos el comienzo del cuerpo del programa, el body

mov ax,@data ;movemos el registro dx, los datos a auxiliar
mov ds,ax
	
	;en ah siempre se cargan las funciones, en este caso 09h, permite desplegar un mensaje en pantalla
mov ah,09h; 0x9 la misma instruccion
mov dx,offset mensaje; movemos el resgistro dx al contenido del mensaje

; se llama a la interrupcion 21h
int 21h

;terminamos el programa
mov ax,4c00h
int 21h

.stack;segmento de pila

end empieza;termina el segmento definido como empieza

;--------------------Microsoft Assembly----------------------------