# _Proceso de instalación de un servicio Systemd en Ubuntu_
---
---
---
---
---
---
### Systemd es un conjunto de de herramientas, librerías y servicios diseñados para administrar y configurar de manera centralizada todos los servicios en sistemas operativos Linux. Systemd nos permite interactuar directamente con el núcleo o kernel del sistema operativo.
---
---
---
---
---
---
## _Pasos para la instalación_
---
---
---
---
---
---
    1) Crear un archivo con el nombre deseado, en este caso 'procedimiento.service', este archivo se debe crear en el siguiente directorio: '/etc/systemd/system/'
---
---
---
    2) Luego de haber creado el archivo se debe de modificar y agregar lo siguiente: 
    [Unit]
    Description=Imprimir un mensaje

    [Service]
    Type=oneshot
    ExecStart=/usr/bin/echo "Bienvenido a mi proceso"

    [Install]
    WantedBy=multi-user.target
---
---
---     
    3) Luego de haber editado el archivo, se deben de guardar los cambios 
---
---
---
    4) Se deben recargar los servicios para que aparezca el nuevo servicio creado, con el siguiente comando:
    sudo systemctl daemon-reload    
---
---
---
    5) Se debe habilitar el servicio para que cargue desde el arranque del sistema, con el siguiente comando: 
    sudo systemctl enable procedimiento.service
---
---
---
    6) Iniciar el servicio, usando el siguiente comando:
    sudo systemctl start procedimiento.service
---
---
---
    7) Verificar el mensaje
    sudo systemctl status print-message.service            