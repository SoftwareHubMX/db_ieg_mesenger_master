create database ieg_menseger;
use ieg_menseger;

create table tb_empresas(
    id_empresa int not null AUTO_INCREMENT,
    empresa text not null,
    logo text not null,
    primary key(id_empresa)
);

create table tb_roles(
    id_rol int not null AUTO_INCREMENT,
    rol text not null,
    prioridad double not null,
    id_empresa int not null,
    primary key(id_rol)
);

create table tb_estatus_usuario(
    id_estatus int not null,
    estatus text not null,
    primary key(id_estatus)
);

insert into tb_estatus_usuario(id_estatus, estatus)
values ('1', 'Conectado');
insert into tb_estatus_usuario(id_estatus, estatus)
values ('2', 'Desconectado');

create table tb_cuentas(
    id_cuenta int not null AUTO_INCREMENT,
    usuario text not null,
    password text not null,
    imagen text not null,
    id_rol int not null,
    id_estatus int not null,
    primary key(id_cuenta)
);

create table tb_usuarios(
    id_usuario int not null AUTO_INCREMENT,
    nombre text not null,
    apellidos text not null,
    correo text not null,
    telefono text not null,
    id_cuenta int not null,
    primary key(id_usuario)
);

create table tb_chats(
    id_chat int not null AUTO_INCREMENT,
    id_cuenta_1 int not null,
    id_cuenta_2 int not null,
    ultima_fecha datetime not null,
    primary key(id_chat)
);

create table tb_estatus_mensajes(
    id_estatus int not null,
    estatus text not null,
    primary key(id_estatus)
);

insert into tb_estatus_mensajes(id_estatus, estatus)
values('1', 'Enviado');
insert into tb_estatus_mensajes(id_estatus, estatus)
values('2', 'Visto');

create table tb_mensajes(
    id_mensaje int not null AUTO_INCREMENT,
    mensaje text not null,
    fecha datetime not null,
    id_cuenta int not null,
    id_estatus int not null,
    id_chat int not null,
    primary key(id_mensaje)
);

create table tb_archivos(
    id_archivo int not null AUTO_INCREMENT,
    archivo text not null,
    id_mensaje int not null,
    primary key(id_archivo)
);

create table tb_accesos(
    id_acceso int not null AUTO_INCREMENT,
    id_cuenta int not null,
    fecha datetime not null,
    accion text not null,
    primary key(id_acceso)
);