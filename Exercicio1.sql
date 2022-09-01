create database db_rh_controle;
USE db_rh_controle;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar(250) not null,
email varchar(250) not null,
telefone varchar(12) not null,
cargo varchar(100) not null,
primary key (id)
);

insert into tb_colaboradores(nome, email, telefone, cargo)
values("Giovanna", "giovanna@colaboradore.com", "11 912341234", "Dev Mobile");
select * from tb_colaboradores;

alter table tb_colaboradores add salario decimal(6,2);

delete from tb_colaboradores where id = 1;
select * from tb_colaboradores;

ALTER TABLE tb_colaboradores MODIFY salario decimal(8,2);

insert into tb_colaboradores(nome, email, telefone, cargo, salario)
values("Bruna", "bruna@colaboradore.com", "11 956785678", "Dev Mobile", 10000.00);
insert into tb_colaboradores(nome, email, telefone, cargo, salario)
values("Jemeremias", "jemeremias@colaboradore.com", "11 911112222", "CEO", 200000.00);
insert into tb_colaboradores(nome, email, telefone, cargo, salario)
values("Henrique", "henrique@colaboradore.com", "11 933334444", "Supervisor", 16000.00);
insert into tb_colaboradores(nome, email, telefone, cargo, salario)
values("Vagner", "vagner@colaboradore.com", "11 955556666", "Estagiário", 2000.00);
insert into tb_colaboradores(nome, email, telefone, cargo, salario)
values("Giovanna", "giovanna@colaboradore.com", "11 912341234", "Dev Mobile", 10000.00);
select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000.00;
select * from tb_colaboradores where salario <= 2000.00;

