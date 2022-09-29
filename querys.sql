-- notas para los roles,
-- el nivel de prioridad:
-- mientras mas bajo se tiene mas prioridad
-- yyyy-mm-dd hh:mm:ss

select
tb_cuentas.id_cuenta
from tb_cuentas
inner join tb_usuarios
on tb_cuentas.id_cuenta = tb_usuarios.id_cuenta
where (tb_cuentas.usuario = ''
and tb_cuentas.password = '')
or (tb_usuarios.correo = ''
and tb_cuentas.password = '');

select
tb_cuentas.id_cuenta
from tb_cuentas
inner join tb_usuarios
on tb_cuentas.id_cuenta = tb_usuarios.id_cuenta
where tb_cuentas.usuario = ''
or tb_usuarios.correo = '';

select
tb_cuentas.id_cuenta,
tb_cuentas.usuario,
tb_roles.id_rol,
tb_roles.rol,
tb_roles.prioridad,
tb_empresas.id_empresa,
tb_empresas.empresa
from tb_cuentas
inner join tb_usuarios
on tb_cuentas.id_cuenta = tb_usuarios.id_cuenta
inner join tb_roles
on tb_roles.id_rol = tb_cuentas.id_rol
inner join tb_empresas
on tb_empresas.id_empresa = tb_roles.id_empresa
where (tb_cuentas.usuario = ''
and tb_cuentas.password = '')
or (tb_usuarios.correo = ''
and tb_cuentas.password = '');

update tb_cuentas set
id_estatus = 1
where id_cuenta = ''

insert into tb_cuentas values 
(null, 'oliver', 'oliver', '1', '1');

insert into tb_empresas(
id_empresa,
empresa,
logo
) values (
null,
'',
''
);

select id_empresa, empresa
from tb_empresas;

insert into tb_roles(
id_rol,
rol,
prioridad,
id_empresa
) values (
null,
'',
'',
''
);

insert into tb_roles(
id_rol,
rol,
prioridad,
id_empresa
) values (
null,
'director',
'100',
'1'
);


insert into tb_roles(
id_rol,
rol,
prioridad,
id_empresa
) values (
null,
'director',
'100',
'2'
);

insert into tb_roles(
id_rol,
rol,
prioridad,
id_empresa
) values (
null,
'empreado',
'200',
'2'
);

select
id_rol,
rol,
prioridad,
id_empresa
from tb_roles
where id_rol = 1;

insert into tb_cuentas(
id_cuenta,
usuario,
password,
id_rol,
id_estatus
) values (
null,
'',
'',
'',
''
);

insert into tb_cuentas(
id_cuenta,
usuario,
password,
id_rol,
id_estatus
) values (
null,
'usuario3',
'Yolo1234',
'3',
'1'
);

select 
id_cuenta,
usuario,
password,
id_rol,
id_estatus
from tb_cuentas
where id_cuenta = 1;

select 
id_cuenta,
usuario,
password,
id_rol,
id_estatus
from tb_cuentas
where usuario = ''

insert into tb_usuarios(
id_usuario,
nombre,
apellidos,
correo,
telefono,
id_cuenta
) values (
null,
'',
'',
'',
'',
''
);

insert into tb_usuarios(
id_usuario,
nombre,
apellidos,
correo,
telefono,
id_cuenta
) values (
null,
'usuario3',
'a',
'correo',
'3223',
'3'
);

select
id_usuario,
nombre,
apellidos,
correo,
telefono,
id_cuenta
from tb_usuarios
where id_cuenta = '';

select
tb_cuentas.id_cuenta,
tb_cuentas.usuario,
tb_cuentas.id_rol,
tb_roles.rol,
tb_cuentas.id_estatus,
tb_estatus_usuario.estatus
from tb_cuentas
inner join tb_roles
on tb_cuentas.id_rol = tb_roles.id_rol
inner join tb_estatus_usuario
on tb_cuentas.id_estatus = tb_estatus_usuario.id_estatus
where tb_roles.id_empresa = '';

insert into tb_chats(
id_chat,
id_cuenta_1,
id_cuenta_2
) values (
null,
'',
''
);

select 
id_chat,
id_cuenta_1,
id_cuenta_2
from tb_chats
where (id_cuenta_1 = ''
and id_cuenta_2 = '') 
or (id_cuenta_1 = '' 
and id_cuenta_2 = '');

select 
id_chat,
id_cuenta_1,
id_cuenta_2
from tb_chats
where id_cuenta_1 = ''
or id_cuenta_2 = '';

select
id_empresa,
empresa
from tb_empresas
where id_empresa = '';

insert into tb_mensajes(
id_mensaje,
mensaje,
fecha,
id_cuenta,
id_estatus,
id_chat
) values (
null,
'',
'',
'',
'',
''
);

select
tb_mensajes.id_mensaje,
tb_mensajes.mensaje,
tb_mensajes.fecha,
tb_mensajes.id_cuenta,
tb_mensajes.id_estatus,
tb_estatus_mensajes.estatus,
tb_mensajes.id_chat
from tb_mensajes
inner join tb_estatus_mensajes
on tb_mensajes.id_estatus = tb_estatus_mensajes.id_estatus
where tb_mensajes.id_chat = '';

update tb_mensajes set
id_estatus = '2'
where id_chat = '';

insert into tb_archivos(
id_archivo,
archivo,
id_mensaje
) values (
null,
'',
''
);

select 
id_archivo,
archivo,
id_mensaje
from tb_archivos
where id_mensaje = '';

select
id_mensaje,
mensaje,
fecha,
id_cuenta,
id_estatus,
id_chat
from tb_mensajes
where mensaje = ''
and fecha = ''
and id_cuenta = ''
and id_chat = '';

update tb_cuentas set
imagen = ''
where id_cuenta = '';

update tb_chats set
ultima_fecha = ''
where id_chat = '';


select count(id_mensaje) 
from tb_mensajes
where id_estatus = '1'
and id_chat = '1';

select 
id_mensaje,
mensaje,
fecha,
id_cuenta,
id_estatus,
id_chat
from tb_mensajes
where id_chat = '2'
order by id_mensaje desc;

insert into tb_accesos(
id_acceso,
id_cuenta,
fecha,
accion
) values (
null,
'',
'',
''
);

select 
id_acceso,
id_cuenta,
fecha,
accion
from tb_accesos;