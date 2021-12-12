########## TAREA 1

### EJERCICIO 1 

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
echo "Numero de filas:" >> netsize.sh | wc -l n1.txt  >> netsize.txt 
echo "Numero de columnas:" >> netsize.sh | head -n 1 n1.txt | tr -d " " | tr -d "\n" | wc -c >> netsize.sh

# Donde se ocupa echo para poder imprimir cada etiqueta de los resultados obtenidos, a su vez esta debe guardarse 
# previamente, al igual que cada resultado obtenido.

# Para verificar que el archivo se haya creado correctamentse se peude hacer uso del comando cat 

cat netsize.txt

# Obteniendose: Nombre del archivo
# /Descargas/Bioinformatica/CSB-master/unix/data/Saavedra2013/n1.txt
# Numero de filas:
# 97 n1.txt
# Numero de columnas:
# 80
