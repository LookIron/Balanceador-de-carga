### Examen 1
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Automatización de infraestructura  

**Estudiante:** Esteban Camacho B.
**Código:** A00320168

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables
* Integrar servicios ejecutandose en nodos distintos

### Herramientas utilizadas
* Vagrant
* Box del sistema operativo CentOS 6.5 o superior
* Nginx 

### Descripción
En la realización del balanceador se utilizó un servidor encargado de realizar 
balanceo de carga el cual fue configurado con Nginx,  dos servidores web apache y 
un servidor de base de datos mysql.

### Procedimiento

1) Se Instalo Nginx, mediante el siguiente comando

* sudo apt-get install nginx
![1](https://cloud.githubusercontent.com/assets/18620736/23816438/cc2342ac-05ba-11e7-90ad-e07838ec5a5e.png)

2) Se configuro el vagrantfile

* Esta anexo arriba

3) Se crearon los cookbooks

* Esta anexo arriba

4) Prueba de funcionamiento

