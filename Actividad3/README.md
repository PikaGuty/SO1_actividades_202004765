# Problema
Se debe a que React es una librería single page aplication por lo que renderiza todo con una sola petición, por lo cual al utilizar React Router el main recibe toda la aplicación y al intentar navegar hacia una ruta distinta a main por primera vez, no mostrará nada ya que no tendrá esa parte de la aplicación cargada. La solución está en agregar al archivo "nginx.conf" al Dockerfile "nginx.Dockerfile" de la siguiente forma:

```bash
COPY nginx.conf /etc/nginx/nginx.conf
```

