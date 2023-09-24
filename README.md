# SakilaDatabase

### 💻Proyecto: 
Sakila es una Base de Datos MySQL ficticia diseñada para representar una tienda de alquiler de peliculas. Las tablas de la base de datos incluyen películas, categorías, actores, clientes, alquileres, pagos, inventario, entre otras.

### 🔍Tipo de testing:

* Database testing

### ⚙ Herramientas utilizadas:

* MySQL

### 📁 Contenido: 
HISTORIA DE USUARIO:
* COMO usuario web
* QUIERO registrar mi cuenta staff como nuevo usuario de sakila
* PARA poder tener acceso a los store y realizar compras

REGLAS DE NEGOCIO (BR)

* BR 1- Campo Válido. Este campo está correctamente rellenado
* BR 2- Campo Requerido. Este campo no puede estar vacío. 
* BR 3- Formato Name No Válido. Este campo no puede contener valores numéricos ni caracteres especiales.
* BR 4- Formato Email No Válido. Este Email solo acepta formato @gmail.com
* BR 5- Usuario Ya Existente. Este Usuario ya está en uso.
* BR 6- Contraseña No Válida. La contraseña debe contener entre 5 a 20 caracteres, de lo contrario no es válida.

### ⚙️ Set up

* Se crean las tablas: business_rules, staff_form y validationlog
* Se agregan los triggers de las reglas de negocio


