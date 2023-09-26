/* Obtener clientes activos que no tienen domicilio -- WHERE*/
SELECT ST.staff_id, ST.username, ST.address_id,ST.active  FROM sakila.staff ST
WHERE ST.active=1 AND ST.address_id IS NULL

/* Obtener los cinco géneros con mayores ingresos brutos en orden descendente -- JOIN, GROUP BY, ORDER BY, LIMIT*/
SELECT FC.category_id, C.name, SUM(P.amount) as ingreso_bruto from sakila.film_category as FC
INNER JOIN sakila.film as F ON F.film_id=FC.film_id
INNER JOIN sakila.category as C ON C.category_id=FC.category_id
INNER JOIN sakila.inventory as I ON I.film_id=F.film_id 
INNER JOIN sakila.rental as R ON R.inventory_id = I.inventory_id
INNER JOIN sakila.payment as P ON P.rental_id = R.rental_id
GROUP BY FC.category_id
ORDER BY ingreso_bruto DESC
LIMIT 5

/*Contar los clientes que empiecen con la letra A agrupados por tienda.
Mostrar solo las tiendas que tengan mas de 20 clientes -- HAVING*/
SELECT COUNT(customer_id) as cantidad_clientes, store_id FROM sakila.customer
WHERE first_name LIKE "A%"
GROUP BY store_id
HAVING cantidad_clientes > 20

/*Identificar las peliculas que no son en Ingles y por lo tanto indicar que se requiere subtitulos--CASE*/
SELECT F.film_id, F.title, L.name,
CASE WHEN L.name="English" THEN "no requiere subtitulos" ELSE "requiere subtitulos"
END AS Subtitulos
FROM sakila.language L
JOIN sakila.film F ON L.language_id=F.language_id


/*Obtener todos los actores que pertenecen a la pelicula ALABAMA DEVIL-- SUBCONSULTAS*/
SELECT concat(A.first_name, " ", A.last_name) as "actores de la pelicula ALABAMA DEVIL" FROM sakila.actor A
WHERE actor_id IN 
(SELECT FA.actor_id FROM sakila.film_actor as FA 
JOIN sakila.film as F ON FA.film_id=F.film_id
WHERE F.title ="ALABAMA DEVIL")

/*Obtener un detalle de todo el staff con el nombre de la direccion (si tiene) -- LEFT JOIN*/
SELECT ST.staff_id,ST.first_name, ST.last_name,ST.address_id, AD.address FROM sakila.staff ST
LEFT JOIN sakila.address AD ON ST.address_id=AD.address_id

/*Obtener la cantidad de alquileres que realizo cada cliente*/
SELECT customer_id, count(customer_id) FROM sakila.rental
GROUP BY customer_id
ORDER BY customer_id DESC

/*Obtener id y nombre de los clientes que realizaron mas de 30 alquileres y pagaron en total mas de $200. 
Mostrar el resultado de forma descendente por monto y luego por id ascendente*/
SELECT P.customer_id, C.first_name, C.last_name, count(rental_id), sum(amount) FROM sakila.payment P
JOIN sakila.customer as C ON C.customer_id=P.customer_id
WHERE P.customer_id IN (SELECT PA.customer_id FROM sakila.payment PA 
GROUP BY PA.customer_id 
HAVING SUM(amount)>200)
GROUP BY P.customer_id
HAVING count(rental_id) > 30
ORDER BY sum(amount) DESC, customer_id ASC











