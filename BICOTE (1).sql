CREATE DATABASE BICOTE;
USE bicote;
CREATE TABLE Cliente(Cedula INT PRIMARY KEY NOT NULL, Nombre VARCHAR (19) NOT NULL, Apellido VARCHAR (20) NOT NULL, Direccion VARCHAR (22), FechaNacimiento VARCHAR (22), Telefono INT NULL, CorreoEletronico VARCHAR (30) NOT NULL);
CREATE TABLE Pedido(NumPedido INT PRIMARY KEY NOT NULL, NomProductoP VARCHAR (20)NOT NULL, Precio INT NOT NULL, Talla INT NOT NULL, Cantidad INT NOT NULL, Cedula INT NOT NULL, FOREIGN KEY (Cedula) REFERENCES Cliente(Cedula), Referecia INT NOT NULL, FOREIGN KEY (Referecia) REFERENCES Producto(Referecia));
CREATE TABLE Producto(Referencia INT PRIMARY KEY NOT NULL,  NomProducto VARCHAR (19), Precio INT NOT NULL, Categoria int  NOT NULL, NumPedido INT NOT NULL, FOREIGN KEY (NumPedido) REFERENCES Pedido(NumPedido));
CREATE TABLE Factura (num_factura INT PRIMARY KEY NOT NULL, Fecha DATE NOT NULL, Cedula INT NOT NULL, MetodoPago INT NOT NULL, NumPago INT NOT NULL, FOREIGN KEY (NumPago)REFERENCES Pago(NumPago), NumPedido INT NOT NULL, FOREIGN KEY (NumPedido) REFERENCES Pedido(NumPedido));
CREATE TABLE Relación (IdRel INT PRIMARY KEY NOT NULL, Cedula INT, NumPedido INT NOT NULL, FOREIGN KEY (NumPedido) REFERENCES Pedido(NumPedido));
CREATE TABLE Relación2 (Cedula2 INT,IdRel2 INT PRIMARY KEY NOT NULL,  NumPedido INT NOT NULL, num_factura INT NOT NULL, FOREIGN KEY (NumPedido) REFERENCES Pedido(NumPedido), FOREIGN KEY (num_factura) REFERENCES Factura(num_factura));
select*from cliente;