# SakilaDatabase

### 💻Proyecto: 
Sakila es una Base de Datos MySQL ficticia diseñada para representar una tienda de alquiler de peliculas. Las tablas de la base de datos incluyen películas, categorías, actores, clientes, alquileres, pagos, inventario, entre otras.

### 🔍Tipo de testing:

* Database testing

### ⚙ Herramientas utilizadas:

* MySQL

### 📁 Contenido: 
<a href="https://github.com/marilinasc/SakilaDatabase/tree/main/US01"> HISTORIA DE USUARIO 01: Registrar nuevo usuario de Sakila </a>
* COMO usuario web
* QUIERO registrar mi cuenta staff como nuevo usuario de sakila
* PARA poder tener acceso a los store y realizar compras

Reglas de negocio (BR)

* BR 1- Campo Válido. Este campo está correctamente rellenado
* BR 2- Campo Requerido. Este campo no puede estar vacío. 
* BR 3- Formato Name No Válido. Este campo no puede contener valores numéricos ni caracteres especiales.
* BR 4- Formato Email No Válido. Este Email solo acepta formato @gmail.com
* BR 5- Usuario Ya Existente. Este Usuario ya está en uso.
* BR 6- Contraseña No Válida. La contraseña debe contener entre 5 a 20 caracteres, de lo contrario no es válida.

<a href="https://github.com/marilinasc/SakilaDatabase/blob/main/consultas.sql"> OTRAS CONSULTAS: </a>
* Obtener clientes activos que no tienen domicilio.
* Obtener los cinco géneros con mayores ingresos brutos en orden descendente.
* Contar los clientes que empiecen con la letra A agrupados por tienda. Mostrar solo las tiendas que tengan mas de 20 clientes.
* Identificar las peliculas que no son en Ingles y por lo tanto indicar que se requiere subtitulos.
* Obtener todos los actores que pertenecen a la pelicula ALABAMA DEVIL.
* Obtener un detalle de todo el staff con el nombre de la direccion (si tiene).
* Obtener la cantidad de alquileres que realizo cada cliente.
* Obtener id y nombre de los clientes que realizaron mas de 30 alquileres y pagaron en total mas de $200. Mostrar el resultado de forma descendente por monto y luego por id ascendente.


