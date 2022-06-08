create table res_didactica(
    codigo SERIAL,
    descripcion varchar(200) NOT NULL,
    detalle varchar(4055) NOT NULL,
    PRIMARY KEY (codigo)
    );


create table res_asignacion_didactica(
    codigo_profesor int NOT NULL,
    codigo_espacio int NOT NULL,
    codigo_didactica int NOT NULL,
    PRIMARY KEY (codigo_espacio,codigo_profesor,codigo_didactica),
    FOREIGN KEY (codigo_espacio) REFERENCES res_espacio(codigo),
    FOREIGN KEY (codigo_profesor) REFERENCES res_profesor(codigo),
    FOREIGN KEY (codigo_didactica) REFERENCES res_didactica(codigo)
);