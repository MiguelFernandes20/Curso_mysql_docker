CREATE TABLE marcas (
marcas_id INT NOT NULL AUTO_INCREMENT,
nome_marca VARCHAR (255) NOT NULL,
origem VARCHAR (255) NOT NULL,

PRIMARY KEY (marcas_id)
);

INSERT INTO marcas (nome_marca, origem)
VALUES
    ('Toyota', 'Japão'),
    ('Honda', 'Japão'),
    ('Ford', 'Estados Unidos'),
    ('Chevrolet', 'Estados Unidos'),
    ('Volkswagen', 'Alemanha');

CREATE TABLE inventario (
inventario_id INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR (255) NOT NULL,
transmisao VARCHAR (255) NOT NULL,
motor VARCHAR (255) NOT NULL,
combustivel VARCHAR (255) NOT NULL,
marcas_id INT NOT NULL,
PRIMARY KEY (inventario_id),
FOREIGN KEY (marcas_id) REFERENCES marcas(marcas_id)
);

INSERT INTO inventario (modelo, transmisao, motor, combustivel, marcas_id)
VALUES
    ('Corolla XLE', 'Automática', '2.0L 4 cilindros', 'Gasolina', 1),
    ('Civic LX', 'Automática', '1.5L 4 cilindros', 'Gasolina', 2),
    ('Mustang GT', 'Manual', '5.0L V8', 'Gasolina', 3),
    ('Camaro SS', 'Automática', '6.2L V8', 'Gasolina', 4),
    ('Golf TSI', 'Automática', '1.4L 4 cilindros', 'Gasolina', 5);

   
   
CREATE  TABLE clientes(
clientes_id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
sobrenome VARCHAR (255) NOT NULL,
endereco VARCHAR (255) NOT NULL,
PRIMARY KEY (clientes_id)
);


INSERT INTO clientes (nome, sobrenome, endereco)
VALUES 
    ('Miguel', 'Fernandes', 'Rua 23'),
    ('Maria', 'Laura', 'Rua tristão'),
    ('Hugo', 'Kazita', 'Rua vila esperança'),
    ('Carlos', 'Batista', 'Rua buraco fundo'),
    ('Ramon', 'Melo', 'Rua portuguêsa'),
    ('Luiz', 'Nascimento', 'Rua Santa luzia');


