/* TC005: Insertar un usuario ya existente*/
INSERT INTO staff 
(FIRST_NAME,LAST_NAME,EMAIL,USERNAME,PASSWORD)
VALUES
("Mike", "Hillyer", "Mike.Hillyer@gmail.com", "Mike", "fish201")

/* Resultado esperado:  Mostrar la regla BR5 en el campo username*/
SELECT * FROM staff
WHERE USERNAME="Mike"

SELECT vlog.staff_Id, st.username, sf.FIELD, vlog.BR_ID, br.logmessage FROM  validationlog as vlog 
INNER JOIN  business_rules as br ON vlog.BR_ID=br.BR_ID
INNER JOIN staff_form as sf ON sf.FIELD_ID=vlog.FIELD_ID
INNER JOIN staff as st ON st.staff_id=vlog.staff_id
WHERE USERNAME="Mike"