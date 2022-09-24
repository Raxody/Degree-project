DROP table res_didactica;

DROP table res_asignacion_didactica;

create table res_didactica(
    descripcion varchar(200) NOT NULL,
    detalle varchar(4055) NOT NULL,
    PRIMARY KEY (descripcion)
    );


create table res_asignacion_didactica(
    codigo_profesor int NOT NULL,
    codigo_espacio int NOT NULL,
    descripcion_didactica varchar(200) NOT NULL,
    PRIMARY KEY (codigo_espacio,codigo_profesor,descripcion_didactica),
    FOREIGN KEY (codigo_espacio) REFERENCES res_espacio(codigo),
    FOREIGN KEY (codigo_profesor) REFERENCES res_profesor(codigo),
    FOREIGN KEY (descripcion_didactica) REFERENCES res_didactica(descripcion)
);