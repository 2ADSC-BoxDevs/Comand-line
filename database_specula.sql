create database specula;

use specula;

create table historico_maquina (
	id_historico int primary key auto_increment,
    fk_maquina int,
    foreign key(fk_maquina) references maquina(id_maquina),
    sistema_operacional varchar(30),
    memoria_em_uso varchar (30),
    memoria_disponivel varchar(30),
    processador_em_uso varchar(30),
    disco_em_uso varchar(30),
    data_hora_registro datetime default current_timestamp,
    discoEmUso varchar(40)
);
