/* TC001: Completar todos los campos correctamente*/
INSERT INTO staff 
(FIRST_NAME,LAST_NAME,EMAIL,USERNAME,PASSWORD)
VALUES
("Phillip", "Meyer", "phillip.meyer@gmail.com", "Pmeyer", "happy2")

/* Resultado esperado: Mostrar la regla BR1 en todos los campos*/
SELECT * FROM staff
WHERE USERNAME="Pmeyer"

SELECT vlog.staff_Id, st.username, sf.FIELD, vlog.BR_ID, br.logmessage FROM  validationlog as vlog 
INNER JOIN  business_rules as br ON vlog.BR_ID=br.BR_ID
INNER JOIN staff_form as sf ON sf.FIELD_ID=vlog.FIELD_ID
INNER JOIN staff as st ON st.staff_id=vlog.staff_id
WHERE USERNAME="Pmeyer"



