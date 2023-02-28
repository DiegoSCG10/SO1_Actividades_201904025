# Error 404 Nginx

## El error indica que el cliente no pudo conectarse con éxito al Host deseado, en este caso al Frontend. Lo que indica es que es que aunque el servidor este funcionando correctamente, el recurso en el sevidor indicado no existe. Indica que el recurso al que quiere ser accedido no fue encontrado. En este caso, el error se encuentra en el servidor utilizado de Nginx.

---
---
---
---
---
---
---
---
---
---
---

# ¿Cómo solucionarlo?

## Para solucionar el problema se tiene que modificar el archivo "nginx.Dockerfile" y se le debe agregar lo siguiente: 

> COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf  
> EXPOSE 80  
> CMD [ "nginx", "-g" "daemon off;" ]

## A su vez, se debe agregar el archivo .conf dentro del directorio especificado:

> nginx/nggnx.conf
>

## y además, se debe agregar lo siguiente: 

    server{
        listen 3000;

        location / {
            root /usr/share/nginx/html;
            index index.html index.htm;
            try_files $uri $uri/ /index.html
        }

        error_pages 500 502 503 504 /50x.html;

        location = /50x.html{
            root /usr/share/nginx/html;
        }
    }