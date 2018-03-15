--Ejercicio 1
SELECT ABS(57)
FROM dual;

--Ejercicio2
SELECT sqrt(23)
FROM dual;

--Ejercicio3
SELECT replace(round(sqrt(23),3),'.',',')
FROM dual;

--Ejercicio4
SELECT NOMBRE,upper(substr(NOMBRE,-3)) AS letras
FROM alumnos
ORDER BY NOMBRE DESC;

--Ejercicio5
SELECT DNI,substr(TELEFONO,1,3)||' '||substr(TELEFONO,4,3)||' '||substr(TELEFONO,7,3),APELLIDO1,APELLIDO2,NOMBRE
FROM ALUMNOS
ORDER BY APELLIDO1,APELLIDO2,NOMBRE ASC;

--Ejercicio6
SELECT n_curso,fecha_inicio+INTERVAL '1' MONTH ,fecha_fin+INTERVAL '1' MONTH,cod_curso,dni_profesor
FROM CURSOS;

--Ejercicio7
SELECT n_curso,fecha_inicio+INTERVAL '45' MINUTE ,fecha_fin+INTERVAL '45' MINUTE ,cod_curso,dni_profesor
FROM CURSOS;

--Ejercicio8
SELECT n_curso,fecha_inicio,fecha_fin,fecha_fin-fecha_inicio
FROM CURSOS;

SELECT n_curso,fecha_inicio,fecha_fin,extract(day from (fecha_fin-fecha_inicio))
FROM CURSOS;

--Ejercicio9
SELECT replace(to_char(fecha_inicio,'fmDay dd /Month/yyyy hh:mm AM'),'/','de '),
  replace(to_char(fecha_fin,'Daydd /Month/yyyy hh:mm AM'),'/','de ')
FROM CURSOS;

--Ejercicio10
SELECT extract(day from last_day(sysdate))
FROM dual;

SELECT to_char(last_day(sysdate),'dd')
FROM dual;

--Ejercicio11
SELECT to_date('01/01/2019')-sysdate
FROM dual;

--Ejercicio12
SELECT trunc(SYSDATE-to_date('01/01/2000'))
FROM dual;
