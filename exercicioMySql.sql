use senac;
CREATE TABLE PRODS
(codigo NUMERIC(3) NOT NULL,
nome VARCHAR(50) NOT NULL,
preco numeric(5,2) NOT NULL,
tipo char(1) null,
constraint PK1 primary key (codigo));

insert into PRODS
values(10,'HD',200,'C');
insert into PRODS
values(11,'memoria',250,'C');
insert into PRODS
values(12,'impressora',680,'P');
insert into PRODS
value(13,'processador',600,'C');
insert into PRODS
values(14,'dvd-rw',2,'S');
insert into PRODS
values(15,'papelA4',19,'S');
insert into PRODS
values(16,'scanner',199,'P');
-- A

SELECT count(nome) as contagem from prods;

-- B
SELECT count(distinct  tipo) from PRODS;

-- C
SELECT count(tipo) from PRODS WHERE tipo = 'C';

SELECT count(tipo) from PRODS WHERE tipo = 'P';

SELECT count(tipo) from PRODS WHERE tipo = 'S';

-- D
select avg(preco) as midiatotal from prods;

-- E e F

select avg(preco) as mediaP  from prods where tipo='P';
select avg(preco) as mediaS  from prods where tipo='S';
select avg(preco) as mediaC  from prods where tipo='C';

-- A) 7 	B) 3 	C) 3 	D) 278.5 	E) 10.5 	F) 350

