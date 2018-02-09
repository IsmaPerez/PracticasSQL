CREATE TABLE articulos (
  cod_art CHAR(7) CONSTRAINT articulos_pk PRIMARY KEY,
  nombre VARCHAR(40) CONSTRAINT articulos_nn1 NOT NULL,
  marca VARCHAR(20) CONSTRAINT articulos_nn2 NOT NULL,
  modelo VARCHAR(15) CONSTRAINT articulos_nn3 NOT NULL,
);


CREATE TABLE precios (
  fecha_inicio DATE CONSTRAINT,
  fecha_fin DATE,
  cod_art CHAR(7) CONSTRAINT precios_fk REFERENCES articulos(cod_art) ON DELETE CASCADE,
  precio NUMBER(7,2),
);

CREATE TABLE secciones (
  id_sec NUMBER(3) CONSTRAINT secciones_pk PRIMARY KEY,
  id_supersec NUMBER(3) CONSTRAINT secciones_fk REFERENCES secciones(id_sec),
)

