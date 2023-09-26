/* TC004: Insertar un email no valido */
INSERT INTO staff 
(FIRST_NAME,LAST_NAME,EMAIL,USERNAME,PASSWORD)
VALUES
("Dana", "Lewis", "dana.lewis@example.com", "DLewis", "natalia1")

/* Resultado esperado:  Mostrar la regla BR4 en el campo email*/
SELECT * FROM staff
WHERE USERNAME="DLewis"

SELECT vlog.staff_Id, st.username, sf.FIELD, vlog.BR_ID, br.logmessage FROM  validationlog as vlog 
INNER JOIN  business_rules as br ON vlog.BR_ID=br.BR_ID
INNER JOIN staff_form as sf ON sf.FIELD_ID=vlog.FIELD_ID
INNER JOIN staff as st ON st.staff_id=vlog.staff_id
WHERE USERNAME="DLewis"
