;turbo asm o tasm

.model small; declaramos el modelo de memoria (64kb)

.stack

.data
mensaje dB 'Hola, soy mitch','$';mensaje, termina con caracter

.code 
inicio:;segmento del programa, el linker del enlazador
mov ax, @data
mov ds, ax
lea dx, mensaje
mov ah, 09h
int 21h; misma nterrucion
mov ah,4ch
int 21h
end inicio
;--------------------Retrocompatibilidad con Microsoft Assembly----------------------------


