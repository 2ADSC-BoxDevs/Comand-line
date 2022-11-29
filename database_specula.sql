create database specula;

use specula;

create table historico_maquina (
	id_historico int primary key auto_increment,
    sistema_operacional varchar(30),
    memoria_em_uso varchar (30),
    memoria_disponivel varchar(30),
    processador_em_uso varchar(30),
    disco_em_uso varchar(30),
    data_hora_registro datetime default current_timestamp,
<<<<<<< HEAD
    discoEmUso varchar(30)
=======
    discoEmUso varchar(40)
>>>>>>> 6033b5d1d050b4ae0cae2786aa9371f2bf7b2f0e
);
