
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

**1) Se Instalo Nginx, mediante el siguiente comando:**

Para la realización del parcial se instaló Nginx, el cual me permitió configurar el servidor encargado de realizar el balanceo. El comando realizado para ello fue el siguiente:

* sudo apt-get install nginx

![1](https://cloud.githubusercontent.com/assets/18620736/23816438/cc2342ac-05ba-11e7-90ad-e07838ec5a5e.png)

**2) Se configuro el vagrantfile:**

Luego de Instalar el Nginx, se configuró el Vagrantfile con las máquinas que se utilizarían para la configuración del servicio de balanceo 

![4](https://cloud.githubusercontent.com/assets/18620736/23816750/78ba5dd8-05bc-11e7-851e-4dee176f49c8.png)

**3) Se crearon los cookbooks:**

Después de dicha configuración se implementó los cookbooks para dar funcionamiento, dentro de los cookbooks como se muestra en la figura 4 tendremos:

![3](https://cloud.githubusercontent.com/assets/18620736/23816776/a3309f8c-05bc-11e7-9a99-81aec637d3ba.png)

**4) Prueba de funcionamiento:**

Ahora se presenta el funcionamiento del servicio, donde en insertan algunos registros de usuarios a la base de datos, dicha lista se consulta desde la base de datos y en cada acceso por el servidor de navegador, el balanceador se encarga de direccionar las solicitudes

![animacion3](https://cloud.githubusercontent.com/assets/18620736/23816814/ce6ef644-05bc-11e7-8be6-8e13723e1cc4.gif)

**5) Problemas encontrados:**

Para la realización del parcial, cuando se deseaba acceder al repositorio el sistema presentaba un error, debido que en la instalación del nginx no se configuro de una forma correcta, o también pudo ser que cuando se descargó no era una versión estable o que soportara las nuevas actualizaciones, o el repositorio no apuntaba a donde debía apuntar. Para dar solución a ello lo que se realizo fue agregar en el archivo de configuración del nginx la siguiente instrucción, la cual direcciona correctamente a que nginx pueda acceder a su repositorio.

![2](https://cloud.githubusercontent.com/assets/18620736/23816848/06664eb2-05bd-11e7-9591-a3d08630dbf9.png)

**6) Conclusione:**
En la realización del aprovisionamiento del balanceador de carga, fue una experiencia de gran aprendizaje, ya que permite ver de manera interactiva cómo funciona la concurrencia y la escalabilidad en el acceso a un servidor, en este caso un servicio web. Además de poder ver esa concurrencia, permite ver cómo interactúan los servidores web con la base de datos. Y todo esto permite asegurar un buen servicio a quien consulte  los servicios ofrecidos.

