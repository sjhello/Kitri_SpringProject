create table notice(
    num number primary key,
    title varchar2(20) not null,
    content varchar2(4000) not null
);
create sequence seq_notice_num;

desc notice;

drop table member;
create table member(
    id varchar2(20) primary key,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    tel varchar2(20) not null,
    address varchar(200) not null,
    email varchar2(50) not null,
    f_level varchar2(20) default 'no',
    w_level varchar2(20) default 'no',
    admin_confirm varchar(10) default 'x',
    age number not null,
    sex varchar2(20) not null
);
select * from member;
desc member;

insert into member values('kgi', 'kgi', 'kgi', '010-1234-1234', 'asdf', 'kgi@naver.com', 'mid', 'mid', 'o', 28, 'm');
insert into member values('pny', 'pny', 'pny', '010-1234-1234', 'asdf', 'pny@naver.com', 'low', 'mid', 'o', 25, 'm');
delete from member;

--alter table member add(age varchar2(20));
--alter table member add(sex varchar2(20));
--alter table member modify(age number);
--alter table member modify(sex not null);
--select * from member;
--update member set age='20' where pwd='1234';
commit;

create table employee(
    id varchar2(20) primary key,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    tel varchar2(20) not null,
    address varchar(200) not null,
    email varchar2(50) not null,
    type varchar2(20) not null,
    mng number
);

create table food(
    f_level varchar2(20),
    f_date varchar2(8),
    mealtime varchar2(20),
    f1 varchar2(50),
    f2 varchar2(50),
    f3 varchar2(50),
    f4 varchar2(50),
    f5 varchar2(50),
    f6 varchar2(50),
    f_check varchar2(5)
);

alter table food add(f_check varchar2(5));

create table workout(
    f_level varchar2(20),
    video varchar2(200),
    contents varchar2(4000),
    w_check varchar2(5)
);

alter table workout add(w_check varchar2(5));

create table inbody(
    id varchar2(20) references member(id) on delete cascade,
    i_date date,
    height number,
    weight number(4,1),
    muscle number(3,1),
    fat number(3,1),
    bmi number(3,1)
);

alter table inbody modify(weight number(4,1));

select * from inbody;

insert into inbody values('kgi', TO_DATE('19/01/01'), 182, 81.9, 38.1, 15.3, 24.7);
insert into inbody values('kgi', TO_DATE('19/02/01'), 182, 83.9, 38.5, 15.6, 24.5);
insert into inbody values('kgi', TO_DATE('19/03/01'), 182, 85.9, 38.3, 16.3, 25.2);
insert into inbody values('kgi', TO_DATE('19/04/01'), 182, 90.9, 40.2, 20.3, 27.5);
insert into inbody values('kgi', TO_DATE('19/05/01'), 182, 85.9, 39.8, 17.3, 23.7);
insert into inbody values('kgi', TO_DATE('19/06/01'), 182, 80.9, 38.1, 12.3, 20.7);


insert into inbody values('pny', TO_DATE('19/01/01'), 171, 110.9, 35.1, 35.3, 35.7);
insert into inbody values('pny', TO_DATE('19/02/01'), 171, 108.9, 36.5, 32.6, 34.5);
insert into inbody values('pny', TO_DATE('19/03/01'), 171, 105.9, 37.3, 29.3, 32.2);
insert into inbody values('pny', TO_DATE('19/04/01'), 171, 107.9, 39.2, 29.8, 33.5);
insert into inbody values('pny', TO_DATE('19/05/01'), 171, 106.9, 38.8, 29.5, 32.7);
insert into inbody values('pny', TO_DATE('19/06/01'), 171, 99.9, 38.1, 23.3, 28.7);

delete inbody;

commit;

create table fittest(
    id varchar2(20) references member(id) on delete cascade,
    fit_date date,
    pushup number,
    pullup number,
    squat number,
    situp number,  
    burpee number
);

insert into fittest values('kgi', TO_DATE('19/01/01'), 40, 5, 60, 10, 10);
insert into fittest values('kgi', TO_DATE('19/02/01'), 50, 8, 65, 15, 15);
insert into fittest values('kgi', TO_DATE('19/03/01'), 60, 9, 60, 30, 20);
insert into fittest values('kgi', TO_DATE('19/04/01'), 70, 10, 80, 50, 21);
insert into fittest values('kgi', TO_DATE('19/05/01'), 80, 8, 70, 60, 22);
insert into fittest values('kgi', TO_DATE('19/06/01'), 100, 12, 75, 80, 20);

insert into fittest values('pny', TO_DATE('19/01/01'), 10, 0, 40, 10, 5);
insert into fittest values('pny', TO_DATE('19/02/01'), 20, 1, 45, 15, 10);
insert into fittest values('pny', TO_DATE('19/03/01'), 20, 2, 60, 20, 11);
insert into fittest values('pny', TO_DATE('19/04/01'), 50, 3, 65, 30, 12);
insert into fittest values('pny', TO_DATE('19/05/01'), 60, 3, 70, 40, 13);
insert into fittest values('pny', TO_DATE('19/06/01'), 65, 5, 72, 45, 12);

select * from fittest;
delete from fittest;

commit; 


alter table notice add reg_date DATE not null; 
alter table notice add hits int not null; 
