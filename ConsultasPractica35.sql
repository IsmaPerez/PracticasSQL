
--Ejercicio 1:
  SELECT fecha_prestamo, sysdate-fecha_prestamo
  FROM PRESTAMOS
  ORDER BY fecha_prestamo DESC;

--Ejercicio 2:
  SELECT fecha_prestamo,n_copia,fecha_tope
  FROM PRESTAMOS
  WHERE FECHA_ENTREGA IS NULL;

--Ejercicio 3:
  SELECT id_prestamo,dni
  FROM PRESTAMOS
  WHERE fecha_prestamo>=to_date('1/3/2018','dd/mm/yyyy') AND FECHA_PRESTAMO<=to_date('31/3/2018','dd/mm/yyyy');

  SELECT id_prestamo,dni
  FROM PRESTAMOS
  WHERE fecha_prestamo between to_date('1/3/2018','dd/mm/yyyy') AND to_date('31/3/2018','dd/mm/yyyy');

  SELECT id_prestamo,dni
  FROM PRESTAMOS
  WHERE extract(month from fecha_prestamo)=extract(month from to_date('31/3/2018','dd/mm/yyyy'));

--Ejercicio 4:
  SELECT dni,TO_CHAR(fecha_prestamo,'fmdd/month/yyyy'),to_char(fecha_tope,'fmdd/month/yyyy'),to_char(fecha_entrega,'fmdd/month/yyyy'),n_copia
  FROM PRESTAMOS;

--Ejercicio 5:
  SELECT titulo
  FROM peliculas
  WHERE INSTR(titulo,' ')=0;

--Ejercicio 6:
  SELECT titulo
  FROM peliculas
  WHERE instr(titulo,' ')!=0 AND instr(titulo,' ',1,2)=0;

--Ejercicio 7:
  SELECT titulo
  FROM peliculas
  WHERE length(titulo)>length(critica);

--Ejercicio 8:
  SELECT upper(translate(titulos,'áéíóúü','aeiouu'))
  FROM peliculas;

--Ejercicio 9:
  SELECT titulo
  FROM peliculas
  WHERE substr(año,1,1)+substr(año,2,1)+substr(año,3,1)+substr(año,4)<10;

--Ejercicio 10:
  SELECT NVL(substr(titulo,1,instr(titulo,' ',1,3)),titulo) AS titulo_comprimido
    FROM peliculas;

--Ejercicio 11:
  SELECT nombre
  FROM clientes
  WHERE instr(translate(upper(nombre),'Á','A'),'A') IN (1,3,5) OR
        instr(translate(upper(nombre),'É','E'),'E') IN (1,3,5);


--Ejercicio 12:
  SELECT titulo
  FROM peliculas
  WHERE instr(titulo,' ')=0 and
        INSTR(translate(upper(titulo),'ÁAÉEIÍOÓUÚÜ','***********'),'*')!=0 AND
        INSTR(translate(upper(titulo),'ÁAÉEIÍOÓUÚÜ','***********'),'*',1,2)=0;

--Ejercicio 13:
  SELECT nombre||' '||apellido1||' '||apellido2||' '||NVL2(email,'('||email||')','sin email') AS datos
  FROM clientes;

--Ejercicio 14:
  SELECT n_copia,decode(deteriorada,1,'Si',0,'No'),decode(formato,1,'DVD',2,'BluRay')
  FROM copias;
--Ejercicio 18:





