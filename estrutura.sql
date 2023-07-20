/*Criação do banco*/

CREATE DATABASE IF NOT EXISTS intranet_unimed;

/*Criação das Tabelas*/

USE intranet_unimed;
--
CREATE TABLE IF NOT EXISTS USUARIO 
(
	CD_MATRICULA INT NOT NULL AUTO_INCREMENT,
    USUARIO VARCHAR(30) NOT NULL UNIQUE,
    SENHA VARCHAR(30) NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    SOBRENOME VARCHAR(100) NOT NULL,
    SEXO VARCHAR(5),
    DATA_NASCIMENTO DATE,
    CARGO VARCHAR (250),
    CD_DEPARTAMENTO INT,
    CD_TIPO_CARGO VARCHAR(5),
    PRIMARY KEY (CD_MATRICULA)
);
--
CREATE TABLE IF NOT EXISTS EXTERNO
(
	CD_EXTERNO INT NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL,
    SOBRENOME VARCHAR(100) NOT NULL,
    SEXO VARCHAR(5),
    DATA_NASCIMENTO DATE,
    CARGO VARCHAR (250),
    CD_DEPARTAMENTO INT,
    CD_TIPO_CARGO VARCHAR(5),
    PRIMARY KEY (CD_EXTERNO)
);
--
CREATE TABLE IF NOT EXISTS TELEFONE_INTERNO
(
	CD_TELEFONE_INT INT NOT NULL AUTO_INCREMENT,
    NUM_TELEFONE VARCHAR(50) NOT NULL,
    CD_MATRICULA INT,
    CD_TIPO_TELEFONE VARCHAR(5),
    PRIMARY KEY (CD_TELEFONE_INT)
);
--
CREATE TABLE IF NOT EXISTS TELEFONE_EXTERNO
(
	CD_TELEFONE_EXT INT NOT NULL AUTO_INCREMENT,
    NUM_TELEFONE VARCHAR(50) NOT NULL,
    CD_EXTERNO INT,
    CD_TIPO_TELEFONE VARCHAR(5),
    PRIMARY KEY (CD_TELEFONE_EXT)
);
--
CREATE TABLE IF NOT EXISTS TIPO_TELEFONE
(
	CD_TIPO_TELEFONE VARCHAR(5) NOT NULL,
    TIPO_TELEFONE VARCHAR(25) NOT NULL,
    PRIMARY KEY (CD_TIPO_TELEFONE)
);
--
CREATE TABLE IF NOT EXISTS DEPARTAMENTO
(
	CD_DEPARTAMENTO INT NOT NULL AUTO_INCREMENT,
    NOME_DEPARTAMENTO VARCHAR(250) NOT NULL,
    PRIMARY KEY (CD_DEPARTAMENTO)
);
--
CREATE TABLE IF NOT EXISTS TIPO_CARGO
(
	CD_TIPO_CARGO VARCHAR(5) NOT NULL,
    TIPO_CARGO VARCHAR(25),
    PRIMARY KEY (CD_TIPO_CARGO)
);

/*Chaves Estrangeiras*/

ALTER TABLE USUARIO
ADD CONSTRAINT FK_CD_DEPARTAMENTO_USER
FOREIGN KEY (CD_DEPARTAMENTO)
REFERENCES DEPARTAMENTO (CD_DEPARTAMENTO);
--
ALTER TABLE USUARIO
ADD CONSTRAINT FK_CD_TIPO_CARGO_USER
FOREIGN KEY (CD_TIPO_CARGO)
REFERENCES TIPO_CARGO (CD_TIPO_CARGO);
--
ALTER TABLE EXTERNO
ADD CONSTRAINT FK_CD_DEPARTAMENTO_EXT
FOREIGN KEY (CD_DEPARTAMENTO)
REFERENCES DEPARTAMENTO (CD_DEPARTAMENTO);
--
ALTER TABLE EXTERNO
ADD CONSTRAINT FK_CD_TIPO_CARGO_EXT
FOREIGN KEY (CD_TIPO_CARGO)
REFERENCES TIPO_CARGO (CD_TIPO_CARGO);
--
ALTER TABLE TELEFONE_INTERNO
ADD CONSTRAINT FK_CD_MATRICULA
FOREIGN KEY (CD_MATRICULA)
REFERENCES USUARIO (CD_MATRICULA);
--
ALTER TABLE TELEFONE_EXTERNO
ADD CONSTRAINT FK_CD_EXTERNO
FOREIGN KEY (CD_EXTERNO)
REFERENCES EXTERNO (CD_EXTERNO);
--
ALTER TABLE TELEFONE_INTERNO
ADD CONSTRAINT FK_CD_TIPO_TELEFONE_INT
FOREIGN KEY (CD_TIPO_TELEFONE)
REFERENCES TIPO_TELEFONE (CD_TIPO_TELEFONE);
--
ALTER TABLE TELEFONE_EXTERNO
ADD CONSTRAINT FK_CD_TIPO_TELEFONE_EXT
FOREIGN KEY (CD_TIPO_TELEFONE)
REFERENCES TIPO_TELEFONE (CD_TIPO_TELEFONE);

/*Povoação do Banco*/

INSERT INTO TIPO_CARGO (CD_TIPO_CARGO, TIPO_CARGO)
VALUES
('C', 'COLABORADOR'),
('M', 'MÉDICO'),
('F', 'FORNECEDOR');
--
INSERT INTO TIPO_TELEFONE (CD_TIPO_TELEFONE, TIPO_TELEFONE)
VALUES
('C', 'CELULAR'),
('F', 'FIXO'),
('P', 'PROFISSIONAL'),
('R', 'RAMAL');
--
INSERT INTO DEPARTAMENTO (NOME_DEPARTAMENTO)
VALUES
('ALMOXARIFADO'),
('ADMINISTRATIVO'),
('AMBULATORIO EFAPI'),
('ARQUIVO'),
('AUDITORIA'),
('AUTORIZAÇÃO'),
('CCIRAS'),
('CENTRAL DE ATENDIMENTO - SAC'),
('CENTRAL DE MATERIAIS'),
('CENTRO CIRÚRGICO'),
('COMERCIAL'),
('COMPRAS'),
('CONTROLADORIA'),
('COTEP'),
('ENFERMAGEM'),
('ESPAÇO VIVER BEM'),
('FARMÁCIA'),
('FATURAMENTO'),
('FINANCEIRO'),
('FISIOTERAPIA'),
('GERÊNCIA'),
('GESTAO DE CONTRATOS'),
('GESTÃO DE OBRAS'),
('INFORMAÇÕES GERENCIAIS'),
('INTERNAÇÃO'),
('INTERNAÇÃO CIRÚRGICA'),
('INTERNAÇÃO CLÍNICA'),
('JURÍDICO'),
('LABORATÓRIO'),
('LAVANDERIA'),
('MANUTENÇÃO'),
('MARKETING'),
('MATERNIDADE'),
('NÚCLEO DE GESTÃO ESTRATÉGICA E ORÇAMENTOS'),
('NÚCLEO DE GOVERNANÇA CORPORATIVA'),
('NÚCLEO DE QUALIDADE EM SAÚDE'),
('NUTRIÇÃO'),
('ONCOLOGIA'),
('OUVIDORIA'),
('PRONTO ATENDIMENTO'),
('RELACIONAMENTO CORPORATIVO'),
('RH'),
('SAÚDE OCUPACIONAL'),
('SUSTENTABILIDADE'),
('TELEFONIA'),
('TI'),
('TRANSPORTE'),
('UND INTERNAÇÃO PEDIÁTRICA - SETOR B'),
('UNIMAGEM - CDI'),
('UNIMED PERSONAL'),
('UNIMED PERSONAL - PINHALZINHO'),
('UNIVOCÊ'),
('UTI ADULTO - ÁREA 1'),
('UTI ADULTO - ÁREA 2'),
('UTI NEONATAL'),
('UTI PEDIÁTRICA');

/*Povoação Login*/

INSERT INTO USUARIO (USUARIO, SENHA, NOME, SOBRENOME, SEXO, DATA_NASCIMENTO, CARGO, CD_DEPARTAMENTO, CD_TIPO_CARGO)
VALUES
('jhenifferdeoliveira', '@uni@227', 'Jheniffer', 'de Oliveira', 'F', '2005-07-25', 'Jovem Aprendiz TI', 46, 'C'),
('kauandelara', '@uni@227', 'Kauan', 'de Lara', 'M', '2005-04-27', 'Jovem Aprendiz TI', 46, 'C'),
('niumargirardi', '@uni@227', 'Niumar', 'Girardi', 'M', '2006-02-24', 'Jovem Aprendiz TI', 46, 'C'),
('lucaswillenbring', '@uni@227', 'Lucas', 'Davila Willenbring', 'M', '2005-02-19', 'Jovem Aprendiz TI', 46, 'C');

/* POVOAÇÃO USUÁRIOS */

/*JA POVOADO/EXECUTADO PRIMEIRA PARTE */
INSERT INTO USUARIO (NOME, SOBRENOME, USUARIO, SENHA, SEXO, DATA_NASCIMENTO, CARGO, CD_DEPARTAMENTO, CD_TIPO_CARGO)
VALUES
('Fernanda', 'Guimarães', 'fernandaguimaraes', '@uni@227', 'I', '1987-10-22', 'Assistente Administrativo de Suprimentos', 1, 'C'),
('Juan', 'Leite', 'juanleite', '@uni@227', 'M', '1995-07-12', 'Analista de Suprimentos', 1, 'C'),
('Rafael', 'Barbosa Domenico', 'rafaelbarbosa', '@uni@227', 'M', '1997-03-14', 'Analista Administrativo de Arquivo', 4, 'C'),
('Camila', 'Oliveira', 'camilaoliveira', '@uni@227', 'F', '1983-02-08', 'Diretor(a) Administrativo(a)', 2, 'C'),
('Lucas', 'Santos', 'lucassantos', '@uni@227', 'I', '1998-06-30', 'Auxiliar Administrativo', 2, 'C'),
('Mariana', 'Pereira', 'marianapereira', '@uni@227', 'F', '1992-11-18', 'Farmacêutica', 3, 'C'),
('Carly', 'Costa', 'carlycosta', '@uni@227', 'F', '1989-04-04', 'Enfermeira', 3, 'C'),
('Michelli', 'Farias', 'michellifarias', '@uni@227', 'I', '1991-09-27', 'Auxiliar Administrativo de Arquivo', 4, 'C'),
('Ana', 'Lima', 'analima', '@uni@227', 'F', '1985-08-10', 'Jovem Aprendiz Administração', 2, 'C'),
('Daniel', 'Ferreira', 'danielferreira', '@uni@227', 'I', '1994-01-28', 'Coordenador de Auditoria', 5, 'C'),
('Larissa', 'Gomes', 'larissagomes', '@uni@227', 'F', '1993-06-15', 'Enfermeiro(a) Auditor(a)', 5, 'C'),
('Thiago', 'Rodrigues', 'thiagorodrigues', '@uni@227', 'M', '1988-12-03', 'Analista de Autorizações', 6, 'C'),
('Isabella', 'Sousa', 'isabellasousa', '@uni@227', 'I', '1996-04-21', 'Coordenador(a) de Autorizações', 6, 'C'),
('Giovanni', 'Martins dos Santos', 'giovannimartins', '@uni@227', 'F', '1999-09-08', 'Médica', 7, 'M'),
('Amanda', 'Costa', 'amandacosta', '@uni@227', 'F', '1986-02-25', 'Enfermeira', 7, 'C'),
('Ricardo', 'Oliveira', 'ricardooliveira', '@uni@227', 'I', '1990-07-13', 'Analista Administrativo', 8, 'C'),
('Juliana', 'Santos', 'julianasantos', '@uni@227', 'F', '1984-12-31', 'Analista Administrativo', 8, 'C'),
('Marcelo', 'Souza', 'marcelosouza', '@uni@227', 'M', '1993-05-19', 'Técnico de Enfermagem CME', 9, 'C'),
('Fernanda', 'Gonçalves Aparecida', 'fernandagoncalves', '@uni@227', 'I', '1982-10-06', 'Auxiliar de Serviços Gerais CME', 9, 'C'),
('Pedro', 'Raveski', 'pedroraveski', '@uni@227', 'M', '1991-02-23', 'Médico', 10, 'M'),
('Camila', 'Ferreira', 'camilaferreira', '@uni@227', 'F', '1987-07-11', 'Coordenador(a) de Enfermagem', 10, 'C'),
('Lucas', 'Rocha', 'lucasrocha', '@uni@227', 'I', '1995-12-29', 'Coordenador de Mercado e Relacionamento', 11, 'C'),
('Mariana', 'Gomes', 'marianagomes', '@uni@227', 'F', '1999-05-17', 'Consultor(a) de Vendas de Plano de Saúde', 11, 'C'),
('Gustavo', 'Martins', 'gustavomartins', '@uni@227', 'M', '1996-10-03', 'Comprador', 12, 'C'),
('Carolina', 'Sousa', 'carolinasousa', '@uni@227', 'I', '1988-02-19', 'Comprador', 12, 'C'),
('Rafael', 'Rodrigues', 'rafaelrodrigues', '@uni@227', 'M', '1993-07-09', 'Auxiliar de Controladoria', 13, 'C'),
('Ana', 'Oliveira', 'anaoliveira', '@uni@227', 'F', '1990-12-26', 'Coordenador(a) de Controladoria', 13, 'C'),
('Daniel', 'Gonçalves', 'danielgoncalves', '@uni@227', 'I', '1986-05-14', 'Assistente Social', 14, 'C'),
('Larissa', 'Camilli', 'larissacamilli', '@uni@227', 'F', '1994-10-01', 'Dentista', 14, 'C'),
('Anabelle', 'Rodrigues', 'anabellerodrigues', '@uni@227', 'F', '1993-12-26', 'Cordenador(a) de Enfermagem', 15, 'C'),
('Thiago', 'Borges', 'thiagoborges', '@uni@227', 'M', '1989-02-17', 'Enfermeiro', 15, 'C'),
('Isabelle', 'Rocha', 'isabellerocha', '@uni@227', 'I', '1983-07-06', 'Fonoaudiólogo', 16, 'C'),
('Suzana', 'Gabriella Silva', 'suzanagabriella', '@uni@227', 'F', '1995-12-24', 'Psicóloga', 16, 'C'),
('Amanda', 'Appi', 'amandaappi', '@uni@227', 'F', '1992-05-12', 'Farmacêutica', 17, 'C'),
('Ricardo', 'Bianchi', 'ricardobianchi', '@uni@227', 'I', '1987-10-30', 'Coordenador Farmacêutico', 17, 'C'),
('Juliana', 'Linhares', 'julianalinhares', '@uni@227', 'F', '1991-03-18', 'Auxiliar de Atendimento', 18, 'C'),
('Marcelo', 'Ricardo dos Santos', 'marceloricardo', '@uni@227', 'M', '1984-08-05', 'Analista de Faturamento', 18, 'C'),
('Fernanda', 'Dutra', 'fernandadutra', '@uni@227', 'I', '1996-01-22', 'Coordenadora de Vendas', 19, 'C'),
('Arthur', 'Viana', 'arthurviana', '@uni@227', 'M', '1989-06-10', 'Assistente Financeiro', 19, 'C'),
('Camila', 'Oliveira Rocha', 'camilaroliveira', '@uni@227', 'F', '1997-11-27', 'Assistente Administrativo Fisioterapia', 20, 'C'),
('Lucas', 'Ricci', 'lucasricci', '@uni@227', 'I', '1992-04-14', 'Fisioterapeuta', 20, 'C'),
('Marcos', 'Carvalho', 'marcoscarvalho', '@uni@227', 'M', '1988-09-02', 'Gerente Corporativo', 21, 'C'),
('Gustavo', 'Rocha', 'gustavorocha', '@uni@227', 'M', '1993-01-20', 'Gerente Hospitalar', 21, 'C'),
('Carolina', 'Cavalcanti', 'carolinacavalcanti', '@uni@227', 'F', '1999-06-07', 'Auxiliar de Contratos', 22, 'C'),
('Bruno', 'Caetano', 'brunocaetano', '@uni@227', 'M', '1985-11-25', 'Auxiliar de Contratos', 22, 'C'),
('Ana', 'Paula Vitorino', 'anavitorino', '@uni@227', 'F', '1990-04-13', 'Assistente de Arquitetura', 23, 'C'),
('Daniel', 'Rizzo', 'danielrizzo', '@uni@227', 'I', '1986-09-01', 'Coordenador de Obras', 23, 'C'),
('Angelica', 'Gomes', 'angelicagomes', '@uni@227', 'F', '1994-01-19', 'Técnico de Inteligência em Informação', 24, 'C'),
('Thiago', 'Stênio', 'thiagostenio', '@uni@227', 'M', '1987-06-06', 'Analista de Parametrização', 24, 'C'),
('Lila', 'Ellen Charlone', 'lilacharlone', '@uni@227', 'I', '1995-10-23', 'Auxiliar de Atendimento', 25, 'C'),
('Eliane', 'Martins', 'elianemartins', '@uni@227', 'F', '1983-03-12', 'Enfermeira', 25, 'C'),
('Marianne', 'Santos', 'mariannesantos', '@uni@227', 'F', '1990-07-10', 'Analista de Marketing', 32, 'C'),
('Josiel', 'Silva', 'josielsilva', '@uni@227', 'M', '1988-07-10', 'Gerente de Vendas', 12, 'C'),
('Enaldo', 'Schuster', 'enaldoschuster', '@uni@227', 'I', '1995-07-10', 'Desenvolvedor de Software', 46, 'C'),
('Anna', 'Ferreira', 'annaferreira', '@uni@227', 'F', '1992-07-10', 'Consultora de Negócios', 32, 'C'),
('Gabriel', 'Costa', 'gabrielcosta', '@uni@227', 'I', '1987-07-10', 'Jovem Aprendiz Administração', 2, 'C'),
('Louise', 'Cordeiro', 'louisecordeiro', '@uni@227', 'F', '1990-08-16', 'Auxiliar Administrativo', 2, 'C'),
('Leonardo', 'Linhares', 'leonardolinhares', '@uni@227', 'M', '1988-08-16', 'Analista Administrativo', 2, 'C'),
('Rian', 'Dutra', 'riandutra', '@uni@227', 'I', '1995-04-22', 'Coordenador Médico', 53, 'M'),
('Stefany', 'Gotti', 'stefanygotti', '@uni@227', 'F', '1992-11-18', 'Médica Pediatra', 56, 'M'),
('Braian', 'Picolo', 'braianpicolo', '@uni@227', 'I', '1987-05-15', 'Coordenador Médico', 54, 'M'),
('Barbara', 'Biagini', 'barbarabiagini', '@uni@227', 'F', '1996-09-08', 'Médica', 40, 'M'),
('Gustavo', 'Gomes Santos', 'gustavogomes', '@uni@227', 'M', '1983-02-01', 'Médico Pediatra', 55, 'M'),
('Carolina', 'Almeida', 'carolinaalmeida', '@uni@227', 'I', '1999-10-30', 'Médica Cirirgiã', 26, 'M'),
('Rodrigo', 'Pereira', 'rodrigopereira', '@uni@227', 'M', '1985-06-20', 'Médico Obstetra', 33, 'M'),
('Lumélia', 'Martins', 'larissamartins', '@uni@227', 'F', '1993-03-14', 'Médica', 10, 'M'),
('Vilson', 'Fernandes', 'vitorfernandes', '@uni@227', 'M', '1991-08-10', 'Médico Cirurgião', 10, 'M'),
('Nicolle', 'Ribeiro', 'nicolleribeiro', '@uni@227', 'F', '1997-01-28', 'Médica', 25, 'M'),
('Jane', 'Ribeiro', 'janeribeiro', '@uni@227', 'F', '1997-01-28', 'Médica Pediátrica', 48, 'M'),
('Thaina', 'Antunes', 'thainaantunes', '@uni@227', 'F', '1994-09-27', 'Advogada', 28, 'C'),
('Diego', 'Barbosa das Graças', 'diegobarbosa', '@uni@227', 'I', '1998-02-15', 'Assistente Jurídico', 28, 'C'),
('Amanda', 'Pereira', 'amandapereira', '@uni@227',  'F', '1984-12-31', 'Bioquímica', 29, 'C'),
('Andrei', 'Mathias', 'andreimathias', '@uni@227', 'M', '1991-05-19', 'Recepcionista', 29, 'C'),
('Julia', 'Pacheco', 'juliapacheco', '@uni@227', 'F', '1989-10-03', 'Auxiliar de Lavanderia', 30, 'C'),
('Raissa', 'Schimit', 'raissaschimit', '@uni@227', 'F', '1987-09-15', 'Governanta', 30, 'C'),
('José', 'Carlos de Oliveira', 'josecarlos', '@uni@227', 'M', '1996-03-21', 'Assistente de Arquitetura ', 31, 'C'),
('Anastasia', 'Lima', 'anastasialima', '@uni@227', 'F', '1993-02-09', 'Coordenadora de Manutenção', 31, 'C'),
('Alfredo', 'Amenic', 'alfredoamenic', '@uni@227', 'M', '1990-07-06', 'Contador', 34, 'C'),
('Douglas', 'Estênio', 'douglasestenio', '@uni@227', 'M', '1988-12-24', 'Auxiliar de Custos', 34, 'C'),
('Karina', 'Almeida', 'karinaalmeida', '@uni@227', 'F', '1995-07-13', 'Assistente de Gestão de Riscos', 35, 'C'),
('Andreia', 'de Jesus', 'andreiadejesus', '@uni@227', 'I', '1992-02-28', 'Analista de Auditoria Interna', 35, 'C'),
('Diego', 'Boeira', 'diegoboeira', '@uni@227', 'M', '1986-07-09', 'Enfermeiro', 36, 'C'),
('Cristiane', 'Rocha', 'cristianerocha', '@uni@227', 'F', '1994-12-26', 'Analista Administrativa em Qualidade', 36, 'C'),
('Vinicius', 'Barbosa', 'viniciusbarbosa', '@uni@227', 'M', '1991-05-14', 'Nutricionista', 37, 'C'),
('Emily', 'Teixeira', 'emilyteixeira', '@uni@227', 'F', '1989-08-16', 'Nutricionista', 37, 'C'),
('Evelyn', 'Almeida dos Santos', 'evelynalmeida', '@uni@227', 'I', '1996-03-18', 'Farmacêutica', 38, 'C'),
('Rosangela', 'Ramos', 'rosangelaramos', '@uni@227', 'F', '1987-09-12', 'Enfermeira', 38, 'C'),
('Eduardo', 'Gabriel de Lima', 'eduardogabriel', '@uni@227', 'M', '1993-02-07', 'Analista de Ouvidoria', 39, 'C'),
('Gean', 'Henrique Carvalho', 'geancarvalho', '@uni@227', 'I', '1990-07-04', 'Coordenador de Ouvidoria', 39, 'C'),
('Mariana', 'Label', 'marianalabel', '@uni@227', 'F', '1988-08-22', 'Enfermeira', 40, 'C'),
('Marcos', 'Rosa', 'marcosrosa', '@uni@227', 'M', '1995-08-11', 'Recepcionista', 40, 'C'),
('Thalita', 'Lavínea', 'thalitalavinea', '@uni@227', 'I', '1987-08-22', 'Analista de Relacionamento Corporativo', 41, 'C'),
('Simone', 'Mendonça', 'simonemendonça', '@uni@227', 'F', '1995-07-12', 'Assistente de Relacionamento Corporativo', 41, 'C'),
('Luana', 'Mello', 'luanamello', '@uni@227', 'F', '1983-02-08', 'Psicóloga', 42, 'C'),
('Gustavo', 'Magda', 'gustavomagda', '@uni@227', 'I', '1998-06-30', 'Auxiliar de Gestão de Pessoas', 42, 'C'),
('Luzia', 'Carol de Lara', 'luziacarol', '@uni@227', 'F', '1992-11-18', 'Psicóloga', 43, 'C'),
('Felipe', 'Cordeiro da Silva', 'felipecordeiro', '@uni@227', 'M', '1989-04-04', 'Fonoaudiólogo', 43, 'C'),
('Carla', 'Soforoso', 'carlasoforoso', '@uni@227', 'I', '1991-09-27', 'Assistente Social', 44, 'C'),
('Giovani', 'Tomazeli', 'giovanitomazeli', '@uni@227', 'F', '1997-03-14', 'Interprete de Libras', 44, 'C'),
('Julio', 'Tamares', 'juliotamares', '@uni@227', 'M', '1985-08-10', 'Telefonista', 45, 'C'),
('João', 'Ferreira', 'joaoferreira', '@uni@227', 'M', '1994-01-28', 'Telefonista', 45, 'C'),
('Cristian', 'Gomes', 'cristiangomes', '@uni@227', 'M', '1993-06-15', 'Analista de Sistemas', 46, 'C'),
('Lucas', 'Cazuni', 'lucascazuni', '@uni@227', 'M', '1988-12-03', 'Desenvolvedor de Software', 46, 'C'),
('Anthony', 'Sousa', 'anthonysousa', '@uni@227', 'I', '1996-04-21', 'Motorista', 47, 'C'),
('Juliano', 'Martins', 'julianomartins', '@uni@227', 'M', '1999-09-08', 'Motorista', 47, 'C'),
('Kaulene', 'Santos', 'kaualenesantos', '@uni@227', 'F', '1984-12-31', 'Radiologista', 49, 'M'),
('Marcelo', 'Fernando Sozua', 'marcelofernando', '@uni@227', 'M', '1993-05-19', 'Enfermeiro', 49, 'C'),
('Alanna', 'Canossa', 'alannacanossa', '@uni@227', 'I', '1982-10-06', 'Farmacêutica', 50, 'C'),
('Juvenal', 'Lima', 'juvenal.lima', '@uni@227', 'M', '1991-02-23', 'Dentista', 50, 'C'),
('Naomi', 'Idalgo', 'naomi.idalgo', '@uni@227', 'F', '1987-07-11', 'Recepcionista', 51, 'C'),
('Leonio', 'Silvani', 'leoniosilavni', '@uni@227', 'M', '1995-12-29', 'Psicólogo', 51, 'C'),
('Marcela', 'Priscila Almeida', 'marcelapriscila', '@uni@227', 'F', '1999-08-25', 'Analista de Relacionamento Cooperado', 52, 'C'),
('Antônio', 'Fossa', 'antoniofossa', '@uni@227', 'M', '1996-10-03', 'Coordenador de Secretaria', 52, 'C'),
('Pedro', 'Los', 'pedrolos', '@uni@227', 'M', '1986-02-25', 'Gerente de Operações', 48, 'C'),
('Rayan', 'Cristi', 'rayancristi', '@uni@227', 'I', '1990-07-13', 'Desenvolvedor de Software', 48, 'C');