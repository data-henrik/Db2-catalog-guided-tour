--#SET TERMINATOR @
drop table henrik.cattable@
create table henrik.cattable (id int not null, s1 varchar(30) default 'Hello',
                              s2 varchar(10 CODEUNITS32) default 'Hi again',
                              xdoc XML,
                              gendate date generated always as ('2023-10-16'),
                              anotherid int constraint fkfun references henrik.cattable(id),
                              primary key (id)
)@
ALTER TABLE henrik.cattable ACTIVATE COLUMN ACCESS CONTROL@

CREATE MASK henrik.s2mask ON henrik.cattable
  	FOR COLUMN s2 RETURN case when current date='2023-10-16'  then 'Welcome to IDUG' else S2 end
  	ENABLE@


create trigger henrik.cattable_trig after update of gendate on henrik.cattable
referencing new table AS ntable
     for each statement secured
     BEGIN ATOMIC
     select 1 from sysibm.sysdummy1;
     END@

--create view henrik.catview as (select id as myid,s2 as mys2,xdoc as myxdoc from henrik.cattable)@


insert into henrik.cattable(id,xdoc,anotherid) values (1,'<a><b>markup or markdown</b></a>',1)@
insert into henrik.cattable(id,xdoc,anotherid) values (2,'<a><b>good or bad</b></a>',1)@
insert into henrik.cattable(id,xdoc,anotherid) values (3,'<a><c>markup or markdown</c></a>',1)@
insert into henrik.cattable(id,xdoc,anotherid) values (4,'<a><d>markup or markdown</d></a>',3)@
insert into henrik.cattable(id,xdoc,anotherid) values (5,'<a><b>markup or markdown</b></a>',3)@
insert into henrik.cattable(id,xdoc,anotherid) values (6,'<a><c>good or bad</c></a>',4)@
insert into henrik.cattable(id,xdoc,anotherid) values (7,'<a><d>good or bad</d></a>',4)@
insert into henrik.cattable(id,xdoc,anotherid) values (8,'<a><b>markup or markdown</b></a>',5)@
insert into henrik.cattable(id,xdoc,anotherid) values (9,'<a><b>markup or markdown</b></a>',5)@
insert into henrik.cattable(id,xdoc,anotherid) values (10,'<a><b>markup or markdown</b></a>',1)@

runstats on table henrik.cattable@
