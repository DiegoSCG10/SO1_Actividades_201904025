# Diego Saul Camey Giron - 201904025

#Leemos la variable GITHUB_USER
read -p "Ingrese su usuario: " GITHUB_USER

#Se realiza la consulta
consulta="https://api.github.com/users/$GITHUB_USER"
resultado=$(curl $consulta)

# Para obtener el ID
IFS=',' 
array=($resultado)
unset IFS;
idUser="${array[1]}"

#Separando el numero ID
IFS=':'
id=($idUser)
unset IFS;

#Obtener la fecha de creación
len=${#array[@]}
fechaUser="${array[$len-2]}"

#Separando la fecha
IFS=':'
fechaU=($fechaUser)
unset IFS;

#Obtener fecha de salida
DIA=$(date +%d)
MES=$(date +%m)
ANIO=$(date +%y)
fecha=$DIA"-"$MES"-"$ANIO

#Creamos la ruta
ruta="/tmp/$fecha/"

#Creamos la carpeta (si no existe)
if [ -d $ruta ];
then
    echo "La carpeta ya existe"
else
    echo "Creando carpeta"
    mkdir -p $ruta
fi

#Creamos el archivo si no existe
rutaArchivo=$ruta"saludos.log"
if [ -f $rutaArchivo ];
then
    echo "El Archivo ya existe"
else    
    echo "Creando archivo..."
    touch $rutaArchivo
fi    

#Texto de salida
clear
salida="Hola $GITHUB_USER. User ID: ${id[1]}. Cuenta fue creada el: ${fechaU[1]}"
echo $salida

#Se escribe en el archivo
echo $salida >> $rutaArchivo