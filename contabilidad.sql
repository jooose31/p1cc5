CREATE TABLE cuentas(
  numcuenta integer,
  nombrecuenta varchar(50),
  tipo char(1),
  PRIMARY KEY(Numcuenta),
  CHECK(tipo in ('A','P','C','I','G'))
);

CREATE TABLE partidas(
  numpartida integer,
  fecha date,
  descripcion varchar(100),
  PRIMARY KEY(numpartida)
);

CREATE TABLE detallepartida(
  numpartida integer,
  numcuenta integer,
  debehaber char(1),
  valor Float,
  PRIMARY KEY(numpartida,numcuenta),
  FOREIGN KEY(numpartida) REFERENCES partidas,
  FOREIGN KEY(numcuenta) REFERENCES cuentas,
  CHECK (debehaber IN ('D','H'))
);
