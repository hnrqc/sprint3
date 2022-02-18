CREATE TABLE aluno(
    id SERIAL,
        nome VARCHAR(255),
        cpf CHAR(11),
        observação TEXT,
        idade INTEGER,
        dinheiro NUMERIC(10,2),
        altura REAL,
        ativo BOOLEAN,
        data_nascimento DATE,
        hora_aula TIME,
        matriculado_em TIMESTAMP
);
INSERT INTO aluno (
	nome, cpf, observação, idade, dinheiro, altura, ativo, data_nascimento,hora_aula,matriculado_em
)
values ('Henrique','12345678901','teste do campo observação',24 , 100.54, 1.83,true,'1997-04-15','17:30:00','2022-02-16 21:27:07');

select * 
	from aluno
WHERE id = 1;

UPDATE aluno
    SET nome = 'Nico',
    cpf = '10987654321',
    observação = 'Teste',
    idade = 38,
    dinheiro = 15.23,
    altura = 1.90,
    ativo = FALSE,
    data_nascimento = '1980-01-15',
    hora_aula = '13:00:00',
    matriculado_em = '2020-01-02 15:00:00'
WHERE id = 1;

SELECT*
	From aluno
WHERE nome = 'Nico';

DELETE 
	From aluno
WHERE nome = 'Nico';

INSERT INTO aluno (nome) VALUES ('Vinícius Dias');
INSERT INTO aluno (nome) VALUES ('Nico Steppat');
INSERT INTO aluno (nome) VALUES ('João Roberto');
INSERT INTO aluno (nome) VALUES ('Diego');

SELECT * 
    FROM aluno
 WHERE nome LIKE '%i%a%';
 
 SELECT *
    FROM aluno
 WHERE cpf IS NULL;
 
 SELECT *
    FROM aluno
 WHERE idade BETWEEN 10 AND 25;

SELECT *
    FROM aluno
  WHERE nome LIKE 'Henrique'
     OR nome LIKE 'Nico%';

CREATE TABLE curso (
    id INTEGER PRIMARY KEY,
        nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

DROP TABLE aluno
CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);
INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinícius');

CREATE TABLE aluno_curso (
    aluno_id INTEGER, 
	curso_id INTEGER,
        PRIMARY KEY (aluno_id, curso_id),

        FOREIGN KEY (aluno_id)
         REFERENCES aluno (id),

        FOREIGN KEY (curso_id)
         REFERENCES curso (id)

);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
/*INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);*/

SELECT aluno.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso ON curso.id = aluno_curso.curso_id

INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (2,2)
