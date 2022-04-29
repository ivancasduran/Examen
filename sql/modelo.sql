use Cuentas_clientes;

drop table if exists usuario;
drop table if exists persona;
drop table if exists CtaCorrient;

create table if not exists usuario (
  id serial primary key,
  nombre varchar(255) not null,
  password varchar(255) not null,
) engine=InnoDB default charset=utf8;

create table if not exists persona (
  id serial primary key,
  usuario varchar(255) not null,
  contraseña varchar(255) not null,
  apellido varchar(255) not null,
  direccion varchar(255) not null,
  correo varchar(255) not null,
  telefono num (50) not null,
  nombreMascota varchar(255) not null,
  persona_id bigint(20) unsigned not null,
  foreign key(persona_id) references persona(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table if not existsCtaCorrient (
  idCuenta serial primary key,
  RutCliente varchar(255) not null,
  monto varchar(255) not null,
  ejecutivo varchar(255) not null,
 ) engine=InnoDB default charset=utf8;





insert into lugar (latitud, longitud, nombre) values ('19.324499386445776', '-99.17937085032463', 'Harry');
insert into lugar (latitud, longitud, nombre) values ('19.324328359583355', '-99.17934268712997', 'Quesadillas');
