DROP TABLE caracteristicas;
DROP TABLE alunos;
CREATE TABLE alunos(
	id INT IDENTITY (1,1),
	nome VARCHAR(200),
	idade INT,
	PRIMARY KEY(id)
);

CREATE TABLE caracteristicas(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_aluno INT,
	nome VARCHAR(100)
);

INSERT INTO alunos (nome, idade) VALUES
 ('Alice', 18),
('Sophia', 4),
('Miguel', 9),
('Heitor', 23),
('Valentina', 15),
('Joaquim', 49);

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoísta');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Organizada');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Pontual');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Criativo');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Proativo');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Altruísta');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Valentina'), 'Pessimista');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Flexível');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Observadora');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Paciente');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Indelicado');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Desobediente');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Intolerante');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Empático');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Egoísta');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoísta');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Altruísta');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Sensível');

SELECT * FROM alunos;
SELECT * FROM caracteristicas;