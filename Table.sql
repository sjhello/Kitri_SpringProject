create table notice(
    num number primary key,
    title varchar2(20) not null,
    content varchar2(4000) not null
);
create sequence seq_notice_num;

desc notice;

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
    sex varchar2(20) not null,
    age varchar2(20) not null
);
select * from member;

insert into inbody values('kgi', 'kgi', 'kgi', 81.9, 38.1, 15.3, 24.7);

--alter table member add(age varchar2(20));
--alter table member modify(age not null);
--alter table member modify(sex varchar2(20));
--select * from member;
--update member set age='20´ë' where pwd='1234';
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
    f6 varchar2(50)
);

create table workout(
    f_level varchar2(20),
    video varchar2(200),
    contents varchar2(4000)
);

create table inbody(
    id varchar2(20) references member(id) on delete cascade,
    i_date date,
    height number,
    weight number(3,1),
    muscle number(3,1),
    fat number(3,1),
    bmi number(3,1)
);

select * from inbody;

insert into inbody values('kgi', TO_DATE('19/01/01'), 182, 81.9, 38.1, 15.3, 24.7);
insert into inbody values('kgi', TO_DATE('19/02/01'), 182, 83.9, 38.5, 15.6, 24.5);
insert into inbody values('kgi', TO_DATE('19/03/01'), 182, 85.9, 38.3, 16.3, 25.2);
insert into inbody values('kgi', TO_DATE('19/04/01'), 182, 90.9, 40.2, 20.3, 27.5);
insert into inbody values('kgi', TO_DATE('19/05/01'), 182, 85.9, 39.8, 17.3, 23.7);
insert into inbody values('kgi', TO_DATE('19/06/01'), 182, 80.9, 38.1, 12.3, 20.7);

delete inbody;


create table fittest(
    id varchar2(20) references member(id) on delete cascade,
    fit_date date,
    pushup number,
    pullup number,
    squat number,
    situp number,  
    burpee number
);

insert into inbody values('kgi', TO_DATE('19/01/01'), 40, 5, 60, 10, 10);
insert into inbody values('kgi', TO_DATE('19/02/01'), 50, 8, 65, 15, 15);
insert into inbody values('kgi', TO_DATE('19/03/01'), 60, 9, 60, 30, 20);
insert into inbody values('kgi', TO_DATE('19/04/01'), 70, 10, 80, 50, 21);
insert into inbody values('kgi', TO_DATE('19/05/01'), 80, 8, 70, 60, 22);
insert into inbody values('kgi', TO_DATE('19/06/01'), 100, 12, 75, 80, 20);
select * from fittest;


commit; 
alter table fittest add(pullup number);








<<<<<<< HEAD
commit; 


alter table notice add reg_date DATE not null; 
alter table notice add hits int not null; 
=======
>>>>>>> a45715629279ca37b128e1173fc37a32cd24bb85
