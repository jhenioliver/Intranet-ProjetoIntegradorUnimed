/*CRIAÇÃO DO BANCO*/

CREATE DATABASE IF NOT EXISTS intranet_unimed;

/*CRIAÇÃO DAS TABELAS*/

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
    CARGO_ESPECIALIDADE VARCHAR (250),
    CD_DEPARTAMENTO INT,
    CD_TIPO_CARGO VARCHAR(5),
    TELEFONE VARCHAR(50),
    CELULAR1 VARCHAR(50),
    CELULAR2 VARCHAR(50),
    PRIMARY KEY (CD_EXTERNO)
);
--
CREATE TABLE IF NOT EXISTS ENDERECO_EXTERNO
(
	CD_ENDERECO_EXT INT NOT NULL AUTO_INCREMENT,
    CD_EXTERNO INT,
    ESTADO VARCHAR (100),
    MUNICIPIO VARCHAR (100),
    BAIRRO VARCHAR (100),
    LOGRADOURO VARCHAR (50),
    RUA VARCHAR (100),
    NUMERO INT,
    COMPLEMENTO VARCHAR(1),
    CEP VARCHAR(20),
    PRIMARY KEY (CD_ENDERECO_EXT)
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
--
CREATE TABLE IF NOT EXISTS SIGLARIO
(
	CD_SIGLA INT NOT NULL AUTO_INCREMENT,
    SIGLA VARCHAR(250),
    DESCRICAO VARCHAR(250),
    USO VARCHAR(10),
    PRIMARY KEY (CD_SIGLA)
);

/*CHAVES ESTRANGEIRAS*/

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
ALTER TABLE ENDERECO_EXTERNO
ADD CONSTRAINT FK_CD_ENDERECO_EXT
FOREIGN KEY (CD_EXTERNO)
REFERENCES EXTERNO (CD_EXTERNO);
--
ALTER TABLE TELEFONE_INTERNO
ADD CONSTRAINT FK_CD_MATRICULA
FOREIGN KEY (CD_MATRICULA)
REFERENCES USUARIO (CD_MATRICULA);
--
ALTER TABLE TELEFONE_INTERNO
ADD CONSTRAINT FK_CD_TIPO_TELEFONE_INT
FOREIGN KEY (CD_TIPO_TELEFONE)
REFERENCES TIPO_TELEFONE (CD_TIPO_TELEFONE);

/*POVOANDO TIPO DE CARGO, TELEFONE E DEPARTAMENTOS*/

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

/*POVOAÇÃO LOGIN*/

INSERT INTO USUARIO (USUARIO, SENHA, NOME, SOBRENOME, SEXO, DATA_NASCIMENTO, CARGO, CD_DEPARTAMENTO, CD_TIPO_CARGO)
VALUES
('jhenifferdeoliveira', '@uni@227', 'Jheniffer', 'de Oliveira', 'F', '2005-07-25', 'Jovem Aprendiz TI', 46, 'C'),
('kauandelara', '@uni@227', 'Kauan', 'de Lara', 'M', '2005-04-27', 'Jovem Aprendiz TI', 46, 'C'),
('niumargirardi', '@uni@227', 'Niumar', 'Girardi', 'M', '2006-02-24', 'Jovem Aprendiz TI', 46, 'C'),
('lucaswillenbring', '@uni@227', 'Lucas', 'Davila Willenbring', 'M', '2005-02-19', 'Jovem Aprendiz TI', 46, 'C');

/* POVOAÇÃO USUÁRIOS */

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
('Carolina', 'Almeida', 'carolinaalmeida', '@uni@227', 'I', '1999-10-30', 'Médica Cirurgiã', 26, 'M'),
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
('Rayan', 'Cristi', 'rayancristi', '@uni@227', 'I', '1990-07-13', 'Desenvolvedor de Software', 48, 'C'),
('Julianne', 'Cristina Almeida', 'juliannealmeida', '@uni@227', 'F', '1998-08-11', 'Enfermeira', 26, 'C'),
('Claudir', 'Simonetto', 'claudir.simonetto', '@uni@227', 'M', '1980-05-26', 'Médico', 27, 'C'),
('Alan', 'Borges da Silva', 'alanborges', '@uni@227', 'M', '2001-02-05', 'Enfermeiro', 27, 'C'),
('Gustavo', 'Soares', 'gustavosoares', '@uni@227', 'M', '2001-06-26', 'Enfermeiro', 33, 'C'),
('Carolina', 'Linhares', 'carolinalinhares', '@uni@227', 'F', '1999-04-26', 'Enfermeira', 53, 'C'),
('Márcia', 'Cordeiro', 'marciacordeiro', '@uni@227', 'F', '1988-12-08', 'Enfermeira', 54, 'C'),
('Elisiane', 'Pereira', 'elisanepereira', '@uni@227', 'F', '1994-06-21', 'Enfermeira', 55, 'C'),
('Sayonara', 'Machado', 'sayonaramachado', '@uni@227', 'F', '1993-11-09', 'Enfermeira', 56, 'C');

/*POVOAÇÃO DOS RAMAIS INTERNOS*/

INSERT INTO TELEFONE_INTERNO(NUM_TELEFONE, CD_MATRICULA, CD_TIPO_TELEFONE)
VALUES
#ADMINISTRATIVO
('2426', 8, 'R'),
('2752', 9, 'R'),
('2660', 13, 'R'),
('2663', 60, 'R'),
('2426', 61, 'R'),
('2752', 62, 'R'),
#TI
('2661', 1, 'R'),
('2306', 2, 'R'),
('1883', 3, 'R'),
('2751', 4, 'R'),
('2258', 58, 'R'),
('2753', 106, 'R'),
('2754', 107, 'R'),
#ALMOXARIFADO
('1890', 5, 'R'),
('2621', 6, 'R'),
#AMBULATORIO
('2487', 10, 'R'),
('2489', 11, 'R'),
#ARQUIVO
('2394', 7, 'R'),
('2718', 12, 'R'),
#AUDITORIA
('2652', 14, 'R'),
('2650', 15, 'R'),
#AUTORIZAÇÃO
('1822', 16, 'R'),
('1819', 17, 'R'),
#CCIRAS
('2568', 18, 'R'),
('1894', 19, 'R'),
#CENTRAL DE ATENDIMENTO - SAC
('2719', 20, 'R'),
('2257', 21, 'R'),
#CENTRAL DE MATERIAIS
('2422', 22, 'R'),
('2701', 23, 'R'),
#CENTRO CIRÚRGICO
('2655', 24, 'R'),
('2765', 25, 'R'),
('2234', 70, 'R'),
('2237', 71, 'R'),
#COMERCIAL
('2727', 26, 'R'),
('2450', 27, 'R'),
#COMPRAS
('1831', 28, 'R'),
('1865', 29, 'R'),
('1866', 57, 'R'),
#CONTROLADORIA
('2772', 30, 'R'),
('2695', 31, 'R'),
#COTEP
('2439', 32, 'R'),
('2458', 33, 'R'),
#ENFERMAGEM
('2722', 34, 'R'),
('2708', 35, 'R'),
#EVB
('2737', 36, 'R'),
('2363', 37, 'R'),
#FARMÁCIA
('2649', 38, 'R'),
('1867', 39, 'R'),
#FATURAMENTO
('2769', 40, 'R'),
('2742', 41, 'R'),
#FINANCEIRO
('2491', 42, 'R'),
('1886', 43, 'R'),
#FISIOTERAPIA
('2342', 44, 'R'),
('2343', 45, 'R'),
#GERÊNCIA
('2661', 46, 'R'),
('2663', 47, 'R'),
#GESTÃO DE CONTRATOS
('1816', 48, 'R'),
('1802', 49, 'R'),
#GESTÃO DE OBRAS
('2376', 50, 'R'),
('1895', 51, 'R'),
#INFORMAÇÕES GERENCIAIS
('2226', 52, 'R'),
('2227', 53, 'R'),
#INTERNAÇÃO
('2432', 54, 'R'),
('1874', 55, 'R'),
('1876', 72, 'R'),
#INTERNAÇÃO CIRÚRGICA
('2230', 68, 'R'),
('2235', 120, 'R'),
#INTERNAÇÃO CLÍNICA
('2300', 121, 'R'),
('2256', 122, 'R'),
#JURÍDICO
('2388', 74, 'R'),
('2397', 75, 'R'),
#LABORATÓRIO
('1850', 76, 'R'),
('1851', 77, 'R'),
#LAVANDERIA
('2313', 78, 'R'),
('2314', 79, 'R'),
#MANUTENÇÃO
('2738', 80, 'R'),
('1898', 81, 'R'),
#MARKENTING
('1817', 56, 'R'),
('2546', 59, 'R'),
#MATERNIDADE
('2434', 69, 'R'),
('2421', 123, 'R'),
#NUCLEO GESTÃO ESTRATÉGICA E ORÇAMENTO
('2658', 82, 'R'),
('2653', 83, 'R'),
#NUCLEO DE GOVERNANÇA COPORATIVA
('2474', 84, 'R'),
('2472', 85, 'R'),
#NUCLEO DE QUALIDADE EM SAUDE
('1892', 86, 'R'),
('2633', 87, 'R'),
#NUTRIÇÃO
('2648', 88, 'R'),
('1877', 89, 'R'),
#ONCOLOGIA
('2740', 90, 'R'),
('2358', 91, 'R'),
#OUVIDORIA
('2386', 92, 'R'),
('2350', 93, 'R'),
#PA
('2702', 66, 'R'),
('2739', 94, 'R'),
('2470', 95, 'R'),
#RELACIONAMENTO CORPORATIVO
('2356', 96, 'R'),
('2359', 97, 'R'),
#RH
('2351', 98, 'R'),
('2218', 99, 'R'),
#SAUDE OCUPACIONAL
('2368', 100, 'R'),
('2485', 101, 'R'),
#SUSTENTABILIDADE
('1815', 102, 'R'),
('2297', 103, 'R'),
#TELEFONIA
('2622', 104, 'R'),
('2565', 105, 'R'),
#TRANSPORTE
('2756', 108, 'R'),
('2832', 109, 'R'),
#UND INTERNAÇÃO PEDIÁTRICA SETOR B
('2768', 73, 'R'),
('2635', 118, 'R'),
('2480', 119, 'R'),
#UNIMAGEM CDI
('2571', 110, 'R'),
('2629', 111, 'R'),
#UNIMED PERSONAL
('2617', 112, 'R'),
('2816', 113, 'R'),
#UNIMED PERSONAL PINHALZINHO
('2417', 114, 'R'),
('2826', 115, 'R'),
#UNIVOCÊ
('2657', 116, 'R'),
('2821', 117, 'R'),
#UTI ADULTO 1
('1872', 63, 'R'),
('2551', 124, 'R'),
#UTI ADULTO 2
('2427', 65, 'R'),
('2541', 125, 'R'),
#UTI NEONATAL
('2216', 67, 'R'),
('2252', 126, 'R'),
#UTI PEDIÁTRICA
('2338', 64, 'R'),
('1875', 127, 'R');

/*PRIMEIRA POVOAÇÃO DOS EXTERNOS (MÉDICOS, COLABORADORES E FORNECEDORES EXTERNOS)*/

#COLABORADORES
INSERT INTO EXTERNO (NOME, SOBRENOME, SEXO, DATA_NASCIMENTO, CARGO_ESPECIALIDADE, CD_DEPARTAMENTO, CD_TIPO_CARGO, TELEFONE, CELULAR1, CELULAR2)
VALUES
('David', 'Luis Costa', 'M', '1985-02-07', 'Auxiliar de Serviços Gerais CME', 9, 'C', '(555) 555-1001', '91234-5678', '92345-6789'),
('Carlos', 'de Oliveira', 'M', '1995-09-26', 'Enfermeiro', 27, 'C', '(555) 555-2002', '93456-7890', '94567-8901'),
('Ruan', 'Pereira Dutra', 'I', '1994-04-25', 'Assistente Jurídico', 28, 'C', '(555) 555-3003', '95678-9012', '96789-0123'),
('Gabriella', 'Ceconi', 'F', '1989-11-03', 'Analista de Marketing', 32, 'C', '(555) 555-4004', '97890-1234', '98901-2345'),
('Andressa', 'Marcondes', 'F', '1997-12-26', 'Auxiliar de Gestão de Pessoas', 42, 'C', '(555) 555-5005', '99012-3456', '90123-4567');
--
#FORNECEDORES
INSERT INTO EXTERNO (NOME, SOBRENOME, SEXO, DATA_NASCIMENTO, CD_TIPO_CARGO, TELEFONE)
VALUES
('Josué', 'Machado Lima', 'M', '1980-05-28', 'F', '(555) 555-6006'),
('Antônio', 'Gonçalves', 'M', '1979-12-07','F', '(555) 555-7007'),
('Isabelli', 'Prates', 'F', '1997-09-15', 'F', '(555) 555-8008'),
('Helena', 'Canossa', 'I', '1996-09-22', 'F', '(555) 555-9009'),
('Janice', 'Martins', 'F', '1986-10-28', 'F', '(555) 555-1010');
--
#MÉDICOS
INSERT INTO EXTERNO (NOME, SOBRENOME, SEXO, DATA_NASCIMENTO, CARGO_ESPECIALIDADE, CD_DEPARTAMENTO, CD_TIPO_CARGO, TELEFONE)
VALUES
('Renata', 'Regert', 'F', '1968-11-28', 'Médico Patologista Clinico/Medicina', 7, 'M', '(555) 555-2020'),
('Alison', 'Verrel', 'M', '1978-07-07', 'Médico Patologista Clinico/Medicina', 10, 'M', '(555) 555-3030'),
('Luiz', 'Felipe Salles', 'M', '1974-06-08', 'Coordenador Médico', 53, 'M', '(555) 555-4040'),
('Michel', 'Henrique Silva', 'M', '1980-07-24', 'Médico Pediatra', 55, 'M', '(555) 555-5050'),
('Leonardo', 'Vitorino', 'M', '1983-03-21', 'Médico Obstetra', 33, 'M', '(555) 555-6060');


/*SEGUNDA POVOAÇÃO DOS EXTERNOS (MÉDICOS, COLABORADORES E FORNECEDORES EXTERNOS)*/

#COLABORADORES
INSERT INTO EXTERNO (NOME, SOBRENOME, SEXO, DATA_NASCIMENTO, CARGO_ESPECIALIDADE, CD_DEPARTAMENTO, CD_TIPO_CARGO, TELEFONE, CELULAR1, CELULAR2)
VALUES
('Ana', 'Souza', 'F', '1985-08-25', 'Analista de Suprimentos', 1, 'C', '(555) 4567-8901', '95678-9012', '91234-5678'),
('Pedro', 'Oliveira', 'M', '1992-03-10', 'Analista Administrativo de Arquivo', 4, 'C', '(555) 7890-1234', '95678-9012', '92345-6789'),
('Mariana', 'Ribeiro', 'F', '1988-11-05', 'Auxiliar Administrativo', 2, 'C', '(555) 2345-6789', '92345-6789', '91234-5678'),
('Carlos', 'Ferreira', 'M', '1977-07-20', 'Analista de Autorizações', 6, 'C', '(555) 8901-2345', '91234-5678', '92345-6789'),
('Isabela', 'Santos', 'F', '1999-02-12', 'Enfermeira', 7, 'C', '(555) 6789-0123', '92345-6789', '95678-9012'),
('Felipe', 'Almeida', 'M', '1983-12-30', 'Técnico de Enfermagem CME', 9, 'C', '(555) 3456-7890', '95678-9012', '91234-5678'),
('Letícia', 'Lima', 'F', '1972-09-17', 'Coordenador de Mercado e Relacionamento', 11, 'C', '(555) 9012-3456', '91234-5678', '92345-6789'),
('Rafael', 'Gomes', 'M', '1986-06-22', 'Comprador', 12, 'C', '(555) 5678-9012', '95678-9012', '91234-5678'),
('Sofia', 'Castro', 'F', '1997-04-07', 'Psicóloga', 16, 'C', '(555) 7890-1234', '92345-6789', '95678-9012'),
('Henrique', 'Barbosa', 'M', '1979-10-03', 'Auxiliar de Atendimento', 18, 'C', '(555) 2345-6789', '91234-5678', '92345-6789');
--
#FORNECEDORES
INSERT INTO EXTERNO (NOME, SOBRENOME, SEXO, DATA_NASCIMENTO, CD_TIPO_CARGO, TELEFONE)
VALUES
('Laura', 'Pereira', 'F', '1990-08-19', 'F', '(555) 8901-2345'),
('Guilherme', 'Fernandes', 'M', '1981-05-13', 'F', '(555) 6789-0123'),
('Camila', 'Martins', 'F', '1975-01-28', 'F', '(555) 3456-7890'),
('Marcelo', 'Rocha', 'M', '1993-11-09', 'F', '(555) 9012-3456'),
('Amanda', 'Cardoso', 'F', '1989-07-24', 'F', '(555) 5678-9012'),
('Vitor', 'Carvalho', 'M', '1978-04-11', 'F', '(555) 7890-1234'),
('Julia', 'Ferreira', 'F', '1991-09-02', 'F', '(555) 2345-6789'),
('Gabriel', 'Sousa', 'M', '1982-06-14', 'F', '(555) 8901-2345'),
('Raquel', 'Gonçalves', 'F', '1998-02-05', 'F', '(555) 6789-0123'),
('Marcos', 'Alves', 'M', '1984-12-31', 'F', '(555) 3456-7890');
--
#MÉDICOS
INSERT INTO EXTERNO (NOME, SOBRENOME, SEXO, DATA_NASCIMENTO, CARGO_ESPECIALIDADE, CD_DEPARTAMENTO, CD_TIPO_CARGO, TELEFONE)
VALUES
('Bruna', 'Oliveira', 'F', '1973-09-16', 'Coordenador Médico', 53, 'M', '(555) 9012-3456'),
('Leonardo', 'Ribeiro', 'M', '1987-06-21', 'Médico Obstetra', 33, 'M', '(555) 5678-9012'),
('Larissa', 'Santos', 'F', '1996-04-08', 'Médica Pediatra', 56, 'M', '(555) 7890-1234'),
('Gustavo', 'Silva', 'M', '1980-10-02', 'Médico Cirurgião', 53, 'M', '(555) 2345-6789'),
('Thais', 'Ferreira', 'F', '1989-08-18', 'Médico Radiologista', 49, 'M', '(555) 8901-2345'),
('Diego', 'Almeida', 'M', '1982-05-12', 'Médico Patologista Clinico/Medicina', 7, 'M', '(555) 6789-0123'),
('Carolina', 'Lima', 'F', '1974-01-27', 'Médico Patologista Clinico/Medicina', 7, 'M', '(555) 3456-7890'),
('Eduardo', 'Gomes', 'M', '1994-11-10', 'Médico Patologista Clinico/Medicina', 10, 'M', '(555) 9012-3456'),
('Fernanda', 'Castro', 'F', '1989-07-23', 'Médico Patologista Clinico/Medicina', 10, 'M', '(555) 5678-9012'),
('Alex', 'Barbosa', 'M', '1983-04-10', 'Médico Pediatra', 55, 'M', '(555) 7890-1234');

/*PRIMEIRA POVOAÇÃO DOS ENDEREÇOS EXTERNOS*/

INSERT INTO ENDERECO_EXTERNO (CD_EXTERNO, ESTADO, MUNICIPIO, BAIRRO)
VALUES
('6', 'Santa Catarina', 'Coronel Freitas', 'Vila Lourdes'),
('7', 'São Paulo', 'Jundiaí', 'Vila Alvorada'),
('8', 'Rio Grande do Sul', 'Porto Alegre', 'Ilha do Pavão' ),
('9', 'Santa Catarina', 'Nova Erechim', 'Morada do Sol'),
('10', 'Santa Catarina', 'Criciúma', 'Santa Luzia');

/*SEGUNDA POVOAÇÃO DOS ENDEREÇOS EXTERNOS*/

INSERT INTO ENDERECO_EXTERNO (CD_EXTERNO, ESTADO, MUNICIPIO, BAIRRO)
VALUES
('26', 'São Paulo', 'São Paulo', 'Centro'),
('27', 'Rio de Janeiro', 'Rio de Janeiro', 'Copacabana'),
('28', 'Minas Gerais', 'Belo Horizonte', 'Savassi'),
('29', 'Bahia', 'Salvador', 'Barra'),
('30', 'Amazonas', 'Manaus', 'Parque 10'),
('31', 'Pernambuco', 'Recife', 'Boa Viagem'),
('32', 'Paraná', 'Curitiba', 'Batel'),
('33', 'Goiás', 'Goiânia', 'Setor Bueno'),
('34', 'Ceará', 'Fortaleza', 'Meireles'),
('35', 'Rio Grande do Sul', 'Porto Alegre', 'Moinhos de Vento');