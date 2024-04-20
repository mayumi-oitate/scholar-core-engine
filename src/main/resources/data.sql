INSERT INTO papel (nome)
SELECT 'ADMIN' WHERE NOT EXISTS (SELECT 1 FROM papel WHERE nome = 'ADMIN');

INSERT INTO papel (nome)
SELECT 'ALUNO' WHERE NOT EXISTS (SELECT 1 FROM papel WHERE nome = 'ALUNO');

INSERT INTO papel (nome)
SELECT 'PROFESSOR' WHERE NOT EXISTS (SELECT 1 FROM papel WHERE nome = 'PROFESSOR');

INSERT INTO papel (nome)
SELECT 'PEDAGOGICO' WHERE NOT EXISTS (SELECT 1 FROM papel WHERE nome = 'PEDAGOGICO');

INSERT INTO papel (nome)
SELECT 'RECRUITER' WHERE NOT EXISTS (SELECT 1 FROM papel WHERE nome = 'RECRUITER');

INSERT INTO usuario (login, senha, papel_id)
SELECT 'admin', 'admin', (SELECT id FROM papel WHERE nome = 'ADMIN')
WHERE NOT EXISTS (SELECT 1 FROM usuario WHERE login = 'admin');