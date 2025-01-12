Create table Empleado(
	id_empleado int PRIMARY KEY,
    nombre varchar(50),
    id_departamento int,
    FOREIGN KEY (id_departamento) references Departamento(id_departamento)
);

Create table Departamento(
	id_departamento int PRIMARY KEY,
    nombre varchar(50)
);

Create table plan_contigencia(
	id_plan int PRIMARY KEY,
    descripcion text,
    id_departamento int,
    FOREIGN KEY(id_departamento) references Departamento(id_departamento)

);

Create table Evaluacion_Plan(
	id_evaluacion int PRIMARY KEY,
    fecha date,
    resultado varchar(20),
    id_plan int,
    FOREIGN KEY(id_plan) references Plan_contigencia(id_plan)

);
