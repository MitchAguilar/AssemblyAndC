section .data

msg db "hola mundo!!!",0xA,xD
len equ $ - msg

section .text
    global _start
_start:
    
    mov eax, 4 ; llamda al sistema(sys_ write)
    ;eax= 4
    mov ebx, 1 ;stout
    mov esx, msg ;msm _salid
    mov edx, len ; longitud msg 

    int 0x80 ; interruccion, llamada al sistema de interruciones
    mov eax, 1 ;exit
    int 0x80 ; interruccion invocada


