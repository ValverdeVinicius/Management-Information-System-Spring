create table candidato (id integer not null auto_increment, recrutador bit not null, curso varchar(255), email varchar(255), img varchar(255), instituicao varchar(255), nome varchar(255), semestre_vigente varchar(255), telefone varchar(255), termino varchar(255), curriculo tinyblob, primary key (id)) engine=InnoDB;
create table candidato_vaga (candidato_id integer not null, vaga_id integer not null, primary key (candidato_id, vaga_id)) engine=InnoDB;
create table login (id integer not null auto_increment, email varchar(255), nome_usuario varchar(255), senha varchar(255), usuario varchar(255), primary key (id)) engine=InnoDB;
create table recrutador (id integer not null auto_increment, recrutador bit not null, curriculo varchar(255), email varchar(255), img varchar(255), nome varchar(255), senha varchar(255), time varchar(255), usuario varchar(255), primary key (id)) engine=InnoDB;
create table vaga (candidatos_id integer, id integer not null auto_increment, descricao varchar(255), formato varchar(255), localizacao varchar(255), nome varchar(255), requisitos varchar(255), primary key (id)) engine=InnoDB;
alter table candidato_vaga add constraint FKjjhby3gy42ry58e0x5s2wgda foreign key (candidato_id) references candidato (id);
alter table candidato_vaga add constraint FKqj1fipl7vgpgbp8n2aum8c0ee foreign key (vaga_id) references vaga (id);
alter table vaga add constraint FKdk8yq0v24rmk4cnwcqqr6aqh8 foreign key (candidatos_id) references candidato (id);

    create table candidato (
        id integer generated by default as identity,
        recrutador boolean not null,
        curso varchar(255),
        email varchar(255),
        img varchar(255),
        instituicao varchar(255),
        nome varchar(255),
        semestre_vigente varchar(255),
        telefone varchar(255),
        termino varchar(255),
        curriculo blob,
        primary key (id)
    );

    create table candidato_vaga (
        candidato_id integer not null,
        vaga_id integer not null,
        primary key (candidato_id, vaga_id)
    );

    create table login (
        id integer generated by default as identity,
        email varchar(255),
        nome_usuario varchar(255),
        senha varchar(255),
        usuario varchar(255),
        primary key (id)
    );

    create table recrutador (
        id integer generated by default as identity,
        recrutador boolean not null,
        curriculo varchar(255),
        email varchar(255),
        img varchar(255),
        nome varchar(255),
        senha varchar(255),
        time varchar(255),
        usuario varchar(255),
        primary key (id)
    );

    create table vaga (
        candidatos_id integer,
        id integer generated by default as identity,
        descricao varchar(255),
        formato varchar(255),
        localizacao varchar(255),
        nome varchar(255),
        requisitos varchar(255),
        primary key (id)
    );

    alter table if exists candidato_vaga 
       add constraint FKjjhby3gy42ry58e0x5s2wgda 
       foreign key (candidato_id) 
       references candidato;

    alter table if exists candidato_vaga 
       add constraint FKqj1fipl7vgpgbp8n2aum8c0ee 
       foreign key (vaga_id) 
       references vaga;

    alter table if exists vaga 
       add constraint FKdk8yq0v24rmk4cnwcqqr6aqh8 
       foreign key (candidatos_id) 
       references candidato;

    create table candidato (
        id integer generated by default as identity,
        recrutador boolean not null,
        curso varchar(255),
        email varchar(255),
        img varchar(255),
        instituicao varchar(255),
        nome varchar(255),
        semestre_vigente varchar(255),
        telefone varchar(255),
        termino varchar(255),
        curriculo blob,
        primary key (id)
    );

    create table candidato_vaga (
        candidato_id integer not null,
        vaga_id integer not null,
        primary key (candidato_id, vaga_id)
    );

    create table login (
        id integer generated by default as identity,
        email varchar(255),
        nome_usuario varchar(255),
        senha varchar(255),
        usuario varchar(255),
        primary key (id)
    );

    create table recrutador (
        id integer generated by default as identity,
        recrutador boolean not null,
        curriculo varchar(255),
        email varchar(255),
        img varchar(255),
        nome varchar(255),
        senha varchar(255),
        time varchar(255),
        usuario varchar(255),
        primary key (id)
    );

    create table vaga (
        candidatos_id integer,
        id integer generated by default as identity,
        descricao varchar(255),
        formato varchar(255),
        localizacao varchar(255),
        nome varchar(255),
        requisitos varchar(255),
        primary key (id)
    );

    alter table if exists candidato_vaga 
       add constraint FKjjhby3gy42ry58e0x5s2wgda 
       foreign key (candidato_id) 
       references candidato;

    alter table if exists candidato_vaga 
       add constraint FKqj1fipl7vgpgbp8n2aum8c0ee 
       foreign key (vaga_id) 
       references vaga;

    alter table if exists vaga 
       add constraint FKdk8yq0v24rmk4cnwcqqr6aqh8 
       foreign key (candidatos_id) 
       references candidato;
INSERT INTO Candidato (nome, telefone, email, recrutador, curriculo, img, semestre_vigente, curso, termino, instituicao) VALUES('Julia Campos', '71 99097845' , 'julia@gmail.com', false, 'Currículo', 'img', '4°', 'Análise', '09/2024', 'If baiano');
INSERT INTO Candidato (nome, telefone, email, recrutador, curriculo, img, semestre_vigente, curso, termino, instituicao) values('Paula Souza', '75 98976394', 'paulo@gmail.com', false, 'Currículo', 'img', '4°', 'Análise', '10/2030', 'Estácio');
INSERT INTO Candidato (nome, telefone, email, recrutador, curriculo, img, semestre_vigente, curso, termino, instituicao) values('João Souza', '21 98576394', 'joao@gmail.com', false, 'Currículo', 'img', '4°', 'Técnico', '01/2025', 'If ');
INSERT INTO Candidato (nome, telefone, email, recrutador, curriculo, img, semestre_vigente, curso, termino, instituicao) values('Mavie', ' 32 9 9867- 4657', 'mavie@gmail.com', false, 'curriculo', 'img', 'semestre', 'curso', 'Terminio', 'Anhanguera');
INSERT INTO Recrutador (nome, email, recrutador, curriculo, img, time) VALUES ('José Alves Campos','jose@gmail.com', true, 'Currículo', 'img', 'Devs');
INSERT INTO Recrutador (nome, email, recrutador, curriculo, img, time) VALUES ('Júlia Porto','ju@gmail.com', true, 'Currículo', 'img', 'Devs');
INSERT INTO Recrutador (nome, email, recrutador, curriculo, img, time) VALUES ('Pedro Henrique ','pedro@gmail.com', true, 'Currículo', 'img', 'Devs');
INSERT INTO Vaga (nome, descricao, requisitos, localizacao, formato, candidatos_id) VALUES ('Estágio em desenvolvimento', 'Estágio das 08:00 às 12 ','linguagens: Java e python', 'Espirito santo', 'Home office', 1);
INSERT INTO Vaga (nome, descricao, requisitos, localizacao, formato, candidatos_id) VALUES ('Estágio em redação', 'Estágio das 14:30 às 18:30 realizar ....',' Java e python', 'São Paulo', 'Presencial', 1);
INSERT INTO Vaga (nome, descricao, requisitos, localizacao, formato, candidatos_id) VALUES ('Progamador Jr', 'Tarefas: Desenvolver programas em C','linguagens: Java e C', 'Bahia', 'Home office', 2);
INSERT INTO Vaga (nome, descricao, requisitos, localizacao, formato, candidatos_id) VALUES ('Gastronomia', 'Tarefas: Desenvolver receitas saudáveis','Ter curso técnico em gastronomia', 'Rio de Janeiro', 'Presencial', 3);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(1,1);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(1,2);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(2,3);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(3,4);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(3,1);
INSERT INTO Login(nome_usuario, senha) VALUES('Pedro Campos','$dndsjbh23');
INSERT INTO Login(nome_usuario, senha) VALUES('Gabriela Alves','dsahdbh23');

    create table candidato (
        id integer generated by default as identity,
        recrutador boolean not null,
        curso varchar(255),
        email varchar(255),
        img varchar(255),
        instituicao varchar(255),
        nome varchar(255),
        semestre_vigente varchar(255),
        telefone varchar(255),
        termino varchar(255),
        curriculo blob,
        primary key (id)
    );

    create table candidato_vaga (
        candidato_id integer not null,
        vaga_id integer not null,
        primary key (candidato_id, vaga_id)
    );

    create table login (
        id integer generated by default as identity,
        email varchar(255),
        nome_usuario varchar(255),
        senha varchar(255),
        usuario varchar(255),
        primary key (id)
    );

    create table recrutador (
        id integer generated by default as identity,
        recrutador boolean not null,
        curriculo varchar(255),
        email varchar(255),
        img varchar(255),
        nome varchar(255),
        senha varchar(255),
        time varchar(255),
        usuario varchar(255),
        primary key (id)
    );

    create table vaga (
        candidatos_id integer,
        id integer generated by default as identity,
        descricao varchar(255),
        formato varchar(255),
        localizacao varchar(255),
        nome varchar(255),
        requisitos varchar(255),
        primary key (id)
    );

    alter table if exists candidato_vaga 
       add constraint FKjjhby3gy42ry58e0x5s2wgda 
       foreign key (candidato_id) 
       references candidato;

    alter table if exists candidato_vaga 
       add constraint FKqj1fipl7vgpgbp8n2aum8c0ee 
       foreign key (vaga_id) 
       references vaga;

    alter table if exists vaga 
       add constraint FKdk8yq0v24rmk4cnwcqqr6aqh8 
       foreign key (candidatos_id) 
       references candidato;
INSERT INTO Candidato (nome, telefone, email, recrutador, curriculo, img, semestre_vigente, curso, termino, instituicao) VALUES('Julia Campos', '71 99097845' , 'julia@gmail.com', false, 'Currículo', 'img', '4°', 'Análise', '09/2024', 'If baiano');
INSERT INTO Candidato (nome, telefone, email, recrutador, curriculo, img, semestre_vigente, curso, termino, instituicao) values('Paula Souza', '75 98976394', 'paulo@gmail.com', false, 'Currículo', 'img', '4°', 'Análise', '10/2030', 'Estácio');
INSERT INTO Candidato (nome, telefone, email, recrutador, curriculo, img, semestre_vigente, curso, termino, instituicao) values('João Souza', '21 98576394', 'joao@gmail.com', false, 'Currículo', 'img', '4°', 'Técnico', '01/2025', 'If ');
INSERT INTO Candidato (nome, telefone, email, recrutador, curriculo, img, semestre_vigente, curso, termino, instituicao) values('Mavie', ' 32 9 9867- 4657', 'mavie@gmail.com', false, 'curriculo', 'img', 'semestre', 'curso', 'Terminio', 'Anhanguera');
INSERT INTO Recrutador (nome, email, recrutador, curriculo, img, time) VALUES ('José Alves Campos','jose@gmail.com', true, 'Currículo', 'img', 'Devs');
INSERT INTO Recrutador (nome, email, recrutador, curriculo, img, time) VALUES ('Júlia Porto','ju@gmail.com', true, 'Currículo', 'img', 'Devs');
INSERT INTO Recrutador (nome, email, recrutador, curriculo, img, time) VALUES ('Pedro Henrique ','pedro@gmail.com', true, 'Currículo', 'img', 'Devs');
INSERT INTO Vaga (nome, descricao, requisitos, localizacao, formato, candidatos_id) VALUES ('Estágio em desenvolvimento', 'Estágio das 08:00 às 12 ','linguagens: Java e python', 'Espirito santo', 'Home office', 1);
INSERT INTO Vaga (nome, descricao, requisitos, localizacao, formato, candidatos_id) VALUES ('Estágio em redação', 'Estágio das 14:30 às 18:30 realizar ....',' Java e python', 'São Paulo', 'Presencial', 1);
INSERT INTO Vaga (nome, descricao, requisitos, localizacao, formato, candidatos_id) VALUES ('Progamador Jr', 'Tarefas: Desenvolver programas em C','linguagens: Java e C', 'Bahia', 'Home office', 2);
INSERT INTO Vaga (nome, descricao, requisitos, localizacao, formato, candidatos_id) VALUES ('Gastronomia', 'Tarefas: Desenvolver receitas saudáveis','Ter curso técnico em gastronomia', 'Rio de Janeiro', 'Presencial', 3);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(1,1);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(1,2);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(2,3);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(3,4);
INSERT INTO Candidato_vaga(candidato_id, vaga_id) VALUES(3,1);
INSERT INTO Login(nome_usuario, senha) VALUES('Pedro Campos','$dndsjbh23');
INSERT INTO Login(nome_usuario, senha) VALUES('Gabriela Alves','dsahdbh23');
