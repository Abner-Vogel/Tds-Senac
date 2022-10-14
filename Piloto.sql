# Tds-Senac
-- 1.a
select  CIDADE, PAIS
from aeroporto
inner join voo on voo.DEST = aeroporto.CODA
 where CODV like 'RG230';
 
 -- 1.b
select  CODV,NOMEP,AVIAO,COMPANHIA  from piloto
inner join escala on escala.CODP=piloto.CODP;
-- 1.c
select  voo.CODV,DATA,HORA PAIS
from escala
inner join voo  on voo.codv = escala.codv
inner join aeroporto  on voo.DEST = aeroporto.CODA
 where PAIS = 'AL' or PAIS= 'IT';
 -- 1.d
 select min(salario),max(salario),avg(salario)
 from piloto
 where pais = 'br';
 -- 2.a
 select COMPANHIA 
 from piloto group by piloto.salario<2000;
 
 -- 2.b
select COMPANHIA 
from piloto inner join escala on escala.codp= piloto.codp
group by COMPANHIA having count(distinct aviao)=1 ;


-- 3.a
select nomep from piloto 
where companhia in(
select companhia
from piloto 
group by companhia
having count(codp)>1
);

-- 3.b

select nomep from piloto
where salario in(
select salario
from piloto
group by salario
having avg(salario)<2900
);
