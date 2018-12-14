
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



insert into member values('kgi', 'kgi', 'kgi', '010-1234-1234', 'asdf', 'kgi@naver.com', 'mid', 'mid', 'o', 'm', 28);
insert into member values('pny', 'pny', 'pny', '010-1234-1234', 'asdf', 'pny@naver.com', 'low', 'mid', 'o', 'm', 25);
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



drop table inbody;
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



ALTER TABLE notice MODIFY(title varchar(100));

commit;



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
--delete from fittest;

commit; 

--drop table workout;

select * from fittest;

=======================한길=====================
식단
create table food(
    num number primary key,
    f_level varchar2(20),
    f_date varchar2(10),
    mealtime varchar2(20),
    f1 varchar2(4000),
    f2 varchar2(4000),
    f3 varchar2(4000),
    f4 varchar2(4000),
    f5 varchar2(4000),
    f6 varchar2(4000)
);

create sequence seq_food_num;
=======================창순 =====================
운동법
create table workout(
    num number primary key,
    f_level varchar2(20),
    title varchar2(100),
    w_date varchar2(50),
    contents varchar2(4000),
);

create sequence seq_workout_num;

========================박노율 =========================
공지사항, Q&A, 1:1 게시판 테이블

create table notice(
    num number primary key,
    title varchar2(20) not null,
    content varchar2(4000) not null,
    reg_date DATE not null,
    hits int not null
);
create sequence seq_notice_num;

create table qa(
    q_num number primary key,	
    title varchar2(100) not null,
    content varchar(4000) not null,
    reg_date date not null
);

create sequence seq_qa_num;

create table b2c_qa(
     code number primary key,
     originNo number not null,
     groupOrd number not null,
     title varchar2(100) not null,
     content varchar(4000) not null, 
     id varchar2(20) references member(id) on delete cascade,
     reg_date date not null,
     check number
);

create sequence seq_b2c_qa_num;

desc notice;

========================================================== 

commit;



