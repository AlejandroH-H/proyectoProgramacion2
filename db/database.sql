create database if not exists preSeleccionCursos;
use preSeleccionCursos;


create table estudiantes(
	id int auto_increment not null,
    name varchar(50) not null,
    lastname varchar(50) not null,
    age int not null,
    email varchar(100) not null,
    cedula int not null,
    password varchar(255) not null,
    primary key(id)
);

create table materias(
	id int auto_increment not null,
    codigoMateria varchar(6) not null,
    nameMateria varchar(100) not null,
    creditoMateria int not null,
    primary key(id)
);

create table inscripciones(
	id int auto_increment not null,
    estudiante_id int not null,
    curso_id int not null,
	unidadCreditoDisponible int not null,
    fecha_inscripcion date not null,
    primary key(id)
);

create table asig_inscritos(
	id int auto_increment not null,
    proceso_id int not null,
    pensum_id int not null,
    estudiante_id int not null,
    primary key(id)
);

create table semestre(
	id int auto_increment not null,
    nombreSemestre varchar(50) not null,
    primary key(id)
);

create table carrera(
	id int auto_increment not null,
    nombreCarrera varchar(100) not null,
    primary key(id)
);

create table periodo(
	id int auto_increment not null,
    nombrePeriodo varchar(8) not null,
    estatus varchar(20) not null,
    primary key(id)
);
