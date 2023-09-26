/* TC003: Insertar un nombre con numeros y otro con caracteres especiales*/
INSERT INTO staff 
(FIRST_NAME,LAST_NAME,EMAIL,USERNAME,PASSWORD)
VALUES
("Emily2023", "Barnett", "emily.barnett@gmail.com", "EBarnett", "iiiii2587"),
("Jared//", "Ferguson", "jared.ferguson@gmail.com", "JFerguson", "poip5600")

/* Resultado esperado:  Mostrar la regla BR3 en el campo nombre*/
SELECT * FROM staff
WHERE username="EBarnett" OR username="JFerguson"

SELECT vlog.staff_Id, st.username, sf.FIELD, vlog.BR_ID, br.logmessage FROM  validationlog as vlog 
INNER JOIN  business_rules as br ON vlog.BR_ID=br.BR_ID
INNER JOIN staff_form as sf ON sf.FIELD_ID=vlog.FIELD_ID
INNER JOIN staff as st ON st.staff_id=vlog.staff_id
WHERE username="EBarnett" OR username="JFerguson"