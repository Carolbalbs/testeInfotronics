-- FUNCIONARIO
CREATE TABLE funcionario(
matricula VARCHAR(7) NOT NULL,
cod_departamento VARCHAR(5) NOT NULL,
cod_cargo VARCHAR(5) NOT NULL,
nome VARCHAR(30)  NOT NULL,
sexo CHAR(1) NOT NULL,
telefone VARCHAR(11) NOT NULL,
cpf VARCHAR(11) NOT NULL,
data_admissao DATE NOT NULL,
data_nascimento DATE NOT NULL,
PRIMARY KEY(matricula)
);
-- INSERINDO DADOS FICTICIOS

INSERT INTO funcionario (matricula, cod_departamento, cod_cargo, nome, sexo, telefone, cpf, data_admissao, data_nascimento)
VALUES
  ('1234567', '001', '001', 'João Silva', 'M', '12345678901', '98765432109', '2022-01-01', '1990-05-15'),
  ('2345678', '002', '002', 'Maria Oliveira', 'F', '23456789012', '87654321098', '2022-02-01', '1985-08-20'),
  ('3456789', '003', '003', 'Carlos Santos', 'M', '34567890123', '76543210987', '2022-03-01', '1988-11-10'),
  ('4567890', '001', '002', 'Ana Pereira', 'F', '45678901234', '65432109876', '2022-04-01', '1995-04-25'),
  ('5678901', '002', '003', 'Pedro Oliveira', 'M', '56789012345', '54321098765', '2022-05-01', '1992-07-30'),
  ('6789012', '003', '001', 'Julia Silva', 'F', '67890123456', '43210987654', '2022-06-01', '1980-12-05'),
  ('7890123', '001', '003', 'Lucas Santos', 'M', '78901234567', '32109876543', '2022-07-01', '1998-02-15'),
  ('8901234', '002', '001', 'Bianca Pereira', 'F', '89012345678', '21098765432', '2022-08-01', '1983-09-18'),
  ('9012345', '003', '002', 'Miguel Oliveira', 'M', '90123456789', '10987654321', '2022-09-01', '1993-06-08'),
  ('0123456', '001', '001', 'Larissa Silva', 'F', '01234567890', '09876543210', '2022-10-01', '1987-03-12');


-- REALIZANDO CONSULTA

select data_nascimento, timestampdiff(YEAR, data_nascimento, curdate()) as idade_funcionario
from funcionario