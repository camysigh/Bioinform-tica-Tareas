##### TAREA 1
## 1. Escriba un script que tome uno de estos archivos
# y determina el número de filas (polinizadores)
# y columnas (plantas).

# Para realizar esto, se puede contar el número se filas del archivo
# con el uso del comando wc -l, donde l se refiere a las líneas. En este
# se contará el número de filas del archivo n1.txt procedente del repocitorio CSB-master

#Cabe destacar que le conteo de número de líneas se realiza, ya que estas son equivalentes
#al número de filas, recordando que una fila es la disposicion de varios objetos, de forma
#serial. Por lo tanto:

wc -l n1.txt

# Obteniendo: 97 n1.txt - por lo que existen 97 filas en este archivo

# Primero para poder determnar el numero de columnas, es necesario verificar que tipo de datos
#se tiene dentro del archivo por lo que se usa head -n 1, que muestra la primera línea:

head -n 1 n1.txt

# Obteniendose:
#1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 0 1 0 1 0 1 0 0 1 1 1 1 1 0 0 1 0 1 0 0 0 0 1 1 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0

# Por lo que se puede visualizar que esta está compuesta por una serie de caracteres, por lo tanto
# se puede realizar un conteo de caracteres mediante el comando wc -c, sin embargo, esto no es factible 
# ya que entre cada número existe un espacio que tambien sería contado al usar el comando mencionado 
# para solventar este problema se necesita eliminar los espacios existentes entre ellos, al igual que 
# la terminación de nueva linea \n, para ello se puede usar el comando tr -d en ambos casos. De esta manera:

head -n 1 n1.txt | tr -d " " | tr -d "\n" | wc -c

# Obteniendose: 80 columnas para este archivo

# Finalmente Para organizar de mejor manera el resultado y poderlo guardar, se emplea el siguiente comando:

echo "Nombre del archivo" >> netsize.sh | echo "/Descargas/Bioinformatica/CSB-master/unix/data/Saavedra2013/n1.txt" >> netsize.sh 
echo "Numero de filas:" >> netsize.sh | wc -l n1.txt  >> netsize.sh 
echo "Numero de columnas:" >> netsize.sh | head -n 1 n1.txt | tr -d " " | tr -d "\n" | wc -c >> netsize.sh

# Donde se ocupa echo para poder imprimir cada etiqueta de los resultados obtenidos, a su vez esta debe guardarse 
# previamente, al igual que cada resultado obtenido.

# Para verificar que el archivo se haya creado correctamentse se peude hacer uso del comando cat 

cat netsize.sh

# Obteniendose: Nombre del archivo
# /Descargas/Bioinformatica/CSB-master/unix/data/Saavedra2013/n1.txt
# Numero de filas:
# 97 n1.txt
# Numero de columnas:
# 80

################################################################################

## 2. Escribe un script que imprima el número de filas
# y columnas para cada red

## Para ello primero se debe dar un valor a una función, esto facilitará el proceso, a la hora de realizar el
# comando, en este caso ARCHIVOS=*.txt, al igualar esta función a *.txt, se le esta ordenando al computador que
# todos los archivos de este repositorio, cuya terminación sea *.txt van a poder ser llamados, gracias a la 
# función ARCHIVOS

# Una vez se realiza esto, se procede a iterar los archivos mediante el bucle for. A cotinuaión se emplea
# nuevamente este bucle en combinación con los anteriores comandos mensionados, para la obtencion de filas 
# y columnas. Finalmente, se imprime el mensaje de los resultados por medio del comando echo, para proceder
# a guardarlos en el archivo netsize_all.sh

echo "Nombre, Número de Filas, Numero de columnas" >>netsize_all.sh; ARCHIVO=*.txt; for A in $ARCHIVO; do echo $A; done | for A in $ARCHIVO; do N_filas=`cat $A | wc -l` N_columnas=`cat $A | head -n 1 | tr -d " " | tr -d "\n" | wc -c`; echo $A $N_filas $N_columnas; done >> netsize_all.sh

# Al realizar el bucle para la determinación de las columnas y filas, se asigno a los resultados una funcion: N_filas 
# y N_columnas respectivamente. Esto se realizó con el proposito de poder imprimir la informacion a modo que se presente:
# Nombre del archivo, Número de Fila, Número de columna. [echo $A $N_filas $N_columnas]. Asimismo, para identificar los
# obtenidos se hizo uso del comando echo, a modo de encabezado de la tabla dada

# Para verificar que se ha desarrollado correctamente el ejercicio, se usa el comando cat 

cat netsize_all.sh

#### El resultado fue el siguiente:

# Nombre, Número de Filas, Numero de columnas
# n10.txt 14 20
# n11.txt 270 91
# n12.txt 7 72
# n13.txt 61 17
# n14.txt 35 15
# n15.txt 38 11
# n16.txt 118 24
# n17.txt 76 31
# n18.txt 13 14
# n19.txt 10 16
# n1.txt 97 80
# n20.txt 18 7
# n21.txt 19 45
# n22.txt 19 36
# n23.txt 179 26
# n24.txt 80 28
# n25.txt 17 16
# n26.txt 82 40
# n27.txt 27 5
# n28.txt 90 19
# n29.txt 61 25
# n2.txt 62 41
# n30.txt 8 19
# n31.txt 28 25
# n32.txt 45 21
# n33.txt 70 20
# n34.txt 79 25
# n35.txt 14 8
# n36.txt 40 169
# n37.txt 44 13
# n38.txt 51 99
# n39.txt 33 25
# n3.txt 25 36
# n40.txt 28 18
# n41.txt 12 10
# n42.txt 42 8
# n43.txt 55 29
# n44.txt 56 9
# n45.txt 36 61
# n46.txt 58 17
# n47.txt 139 41
# n48.txt 118 49
# n49.txt 47 23
# n4.txt 101 11
# n50.txt 45 46
# n51.txt 8 15
# n52.txt 33 7
# n53.txt 34 13
# n54.txt 126 25
# n55.txt 14 50
# n56.txt 110 207
# n57.txt 14 11
# n58.txt 678 90
# n59.txt 663 130
# n5.txt 21 7
# n6.txt 9 31
# n7.txt 16 25
# n8.txt 19 33
# n9.txt 12 22

# Cabe mencionar que el proceso para determinar el numero de filas y columnas, se lo hizo consecutivamente
# ya que se deseaba obtener una presentación de resultados en la que se asemeje a una tabla o datos tabulares. 












