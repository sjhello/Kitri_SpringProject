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

create table fittest(
    id varchar2(20) references member(id) on delete cascade,
    fit_date date,
    situp number,
    pushup number,
    pullup number,
    squat number,
    burpee number
);
commit; 
alter table fittest add(pullup number);

drop table workout;

create table workout(
    num number primary key,
    f_level varchar2(20),
    title varchar2(100),
    w_date varchar2(50),
    contents varchar2(4000),
    w_check varchar2(5)
);

create sequence seq_workout_num;







