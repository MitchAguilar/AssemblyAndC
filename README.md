
# Assembly

## Bienvenido/a

En el momento de crear éstos programas en Assembly, fue necesario el uso de un SO de derivación GNU/linux, es éste caso ( Linux mint ), no con ello queriendo dictar un SO específico para correrlos; sin embargo los SO de derivación GNU/linux evitan el uso de una VM para e enlace con el compilador NASM, usado en la compilación de éstos programas, y que en Windows es necesaria.

## > 1.- Hola Mundo
~~~
El archivo contenido, explica la arquitectura de 32 bits, para la ejecución de programas en asm.

#Teoría de asm.
//pendiente redacción

#Comandos
sudo apt-get install nasm                   | Instalación del compilador nasm para asm
nasm -f elf Holamundo.asm                   | Pasar el archivo asm por el compilador de asm, que genera el .o para enviar al enlazador
ld -m elf_i386 -s -o Holamundo  Holamundo.o | Modo de enlace para registros de 32 bits= elf_i386
./Holamundo                                 | Ejecución del programa compilado
~~~

➡ [Enlace del doc.mitch](1.-holamundo/doc.mitch)

## > 2.- Automatizando El Ensamblado
~~~
Este documento contiene las rutas para omitir el proceso de terminal para enlazar y compilar un programa ams

#Teoría de asm.
/ Radica en el uso de sublime text para mediante ctrl+b poder enlazar y compilar archivos asm

#Comandos
{"cmd": ["~/run.sh ${file} ${file_base_name}"],"shell": true}	|Comando de ejecución para sublime
REF// run.sh 													|Comando bash para el proceso

#Precaución 
/Eliminar los espacios de las rutas, interfieren en la secuencia de la  bash
~~~
➡ [Enlace del doc.mitch](2.-AutomatizandoElEnsamblado/doc.mitch)


> [LICENSE ® ](https://opensource.org/licenses/MIT) 
!["License"](https://opensource.org/files/osi_keyhole_300X300_90ppi_0.png)