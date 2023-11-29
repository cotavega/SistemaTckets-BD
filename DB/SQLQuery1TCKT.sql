CREATE TABLE Usuarios (
    Id int not null PRIMARY KEY,
    Nombre varchar (100),
	Rfc char (13) not null,
	Telefono varchar (100),
    CorreoElectronico varchar(100)
);

CREATE TABLE Departamentos (
    ID int not null PRIMARY KEY,
    Nombre varchar(100) NOT NULL,
    Descripcion varchar(MAX),
    ResponsableID INT,
    CONSTRAINT FK_ResponsableID FOREIGN KEY (ResponsableID) REFERENCES Usuarios(ID)
);


CREATE TABLE Tickets (
    Id int not null PRIMARY KEY,
    Titulo varchar (200),
    Descripcion varchar(MAX),
    FechaCreacion datetime,
    EstadoID int FOREIGN KEY references Estados(ID),
    PrioridadID INT FOREIGN KEY references Prioridades(ID),
    UsuarioID INT FOREIGN KEY references Usuarios(ID)
);

CREATE TABLE Comentarios (
    id int not null PRIMARY KEY,
    TicketID int FOREIGN KEY references Tickets(ID),
    UsuarioID int FOREIGN KEY references Usuarios(ID),
    Comentario varchar(MAX),
    FechaComentario DATETIME
);

CREATE TABLE Estados (
    id int not null PRIMARY KEY,
    Nombre varchar (100)
);

CREATE TABLE Prioridades (
    Id int PRIMARY KEY,
    Nombre varchar(100)
);

 
 select * from Usuarios
 select * from departamentos