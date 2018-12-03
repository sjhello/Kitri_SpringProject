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
    f_level varchar2(20),
    w_level varchar2(20),
    admin_confirm varchar(10) default 'x'
);


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
    f_date date,
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

drop table fittest;

create table fittest(
    id varchar2(20) references member(id) on delete cascade,
    fit_date date,
    pushup number,
    pullup number,
    squat number,
    situp number,
    burpee number
);


commit; 
