create table member(
    id varchar(20) primary key,
    pwd varchar(20) not null,
    name varchar(20) not null,
    tel varchar(20) not null,
    address varchar(200) not null,
    email varchar(50) not null,
    f_level varchar(20) default 'no',
    w_level varchar(20) default 'no',
    admin_confirm varchar(10) default 'x',
    sex varchar(20) not null,
    age varchar(20) not null,
    postnum int
);

insert into member values('kgi', 'kgi', 'kgi', '010-1234-1234', 'asdf', 'kgi@naver.com', 'mid', 'mid', 'o', 'm', '28', 75320);
insert into member values('pny', 'pny', 'pny', '010-1234-1234', 'asdf', 'pny@naver.com', 'low', 'mid', 'o', 'm', '25', 65792);
insert into member values('admin', 'admin', 'admin', '010-1234-1234', 'asdf', 'admin@naver.com', 'mid', 'mid', 'o', 'm', '50', 15792);

select * from member;

select * from memberemailauth;
create table memberemailauth(
    id varchar(20),
    email varchar(50),
    user_authcode varchar(200),
    auth_confirm varchar(20) default 'x',
    foreign key (id) references member(id)
    
);


insert into memberemailauth values('kgi', 'kgi@naver.com', 'asdf1234', 'o');
insert into memberemailauth values('pny', 'pny@naver.com', 'qwer1234', 'o');
insert into memberemailauth values('admin', 'admin@gmail.com', 'zxcv1234', 'o');

commit;

create table employee(
    id varchar(20),
    pwd varchar(20) not null,
    name varchar(20) not null,
    tel varchar(20) not null,
    address varchar(200) not null,
    email varchar(50) not null,
    type varchar(20) not null,
    mng int,
    foreign key (id) references member(id) 
);

select * from employee;


insert into employee values('admin', 'admin', 'admin', '01012341234', 'seoul', 'admin@gmail.com', 'admin', 1);


create table inbody(
    id varchar(20),
    i_date date,
    height int,
    weight double(4,1),
    muscle double(3,1),
    fat double(3,1),
    bmi double(3,1),
    foreign key (id) references member(id) on delete cascade
);

select * from inbody;

insert into inbody values('kgi', STR_TO_DATE('19/01','%y/%m'), 182, 81.9, 38.1, 15.3, 24.7);
insert into inbody values('kgi', STR_TO_DATE('19/02','%y/%m'), 182, 83.9, 38.5, 15.6, 24.5);
insert into inbody values('kgi', STR_TO_DATE('19/03','%y/%m'), 182, 85.9, 38.3, 16.3, 25.2);
insert into inbody values('kgi', STR_TO_DATE('19/04','%y/%m'), 182, 90.9, 40.2, 20.3, 27.5);
insert into inbody values('kgi', STR_TO_DATE('19/05','%y/%m'), 182, 85.9, 39.8, 17.3, 23.7);
insert into inbody values('kgi', STR_TO_DATE('19/06','%y/%m'), 182, 80.9, 38.1, 12.3, 20.7);


insert into inbody values('pny', STR_TO_DATE('19/01','%y/%m'), 171, 110.9, 35.1, 35.3, 35.7);
insert into inbody values('pny', STR_TO_DATE('19/02','%y/%m'), 171, 108.9, 36.5, 32.6, 34.5);
insert into inbody values('pny', STR_TO_DATE('19/03','%y/%m'), 171, 105.9, 37.3, 29.3, 32.2);
insert into inbody values('pny', STR_TO_DATE('19/04','%y/%m'), 171, 107.9, 39.2, 29.8, 33.5);
insert into inbody values('pny', STR_TO_DATE('19/05','%y/%m'), 171, 106.9, 38.8, 29.5, 32.7);
insert into inbody values('pny', STR_TO_DATE('19/06','%y/%m'), 171, 99.9, 38.1, 23.3, 28.7);


create table fittest(
    id varchar(20),
    fit_date date,
    pushup int,
    pullup int,
    squat int,
    situp int,  
    burpee int,
    foreign key (id) references member(id) on delete cascade
);

insert into fittest values('kgi', STR_TO_DATE('19/01','%y/%m'), 40, 5, 60, 10, 10);
insert into fittest values('kgi', STR_TO_DATE('19/02','%y/%m'), 50, 8, 65, 15, 15);
insert into fittest values('kgi', STR_TO_DATE('19/03','%y/%m'), 60, 9, 60, 30, 20);
insert into fittest values('kgi', STR_TO_DATE('19/04','%y/%m'), 70, 10, 80, 50, 21);
insert into fittest values('kgi', STR_TO_DATE('19/05','%y/%m'), 80, 8, 70, 60, 22);
insert into fittest values('kgi', STR_TO_DATE('19/06','%y/%m'), 100, 12, 75, 80, 20);


insert into fittest values('pny', STR_TO_DATE('19/01','%y/%m'), 10, 0, 40, 10, 5);
insert into fittest values('pny', STR_TO_DATE('19/02','%y/%m'), 20, 1, 45, 15, 10);
insert into fittest values('pny', STR_TO_DATE('19/03','%y/%m'), 20, 2, 60, 20, 11);
insert into fittest values('pny', STR_TO_DATE('19/04','%y/%m'), 50, 3, 65, 30, 12);
insert into fittest values('pny', STR_TO_DATE('19/05','%y/%m'), 60, 3, 70, 40, 13);
insert into fittest values('pny', STR_TO_DATE('19/06','%y/%m'), 65, 5, 72, 45, 12);


create table food(
    num int primary key,
    f_level varchar(20),
    f_date varchar(10),
    mealtime varchar(20),
    f text
);

create sequence seq_food_num START WITH 1 INCREMENT BY 1;

commit;


create table workout(
    num int primary key,
    w_level varchar(20),
    title varchar(100),
    w_date varchar(50),
    contents text,
    w_check varchar(5)
);

create sequence seq_workout_num START WITH 1 INCREMENT BY 1;

create table workout_check(
    num int primary key,
    id varchar(20),
    work_num int references workout(num),
    work_check varchar(20) default 'x',
    work_date date,
    foreign key (id) references member(id) on delete cascade,
    foreign key (work_num) references workout(num) 
);

create table notice(
    num int primary key,
    title varchar(20) not null,
    content text not null,
    reg_date DATE not null,
    hits int not null,
    id varchar(20),
    foreign key (id) references member(id)
);


create sequence seq_notice_num START WITH 1 INCREMENT BY 1;

create table qa(
    q_num int primary key,   
    title varchar(100) not null,
    content text not null,
    reg_date date not null,
    id varchar(20),
    foreign key (id) references member(id) on delete cascade
);

create sequence seq_qa_num START WITH 1 INCREMENT BY 1;

create table b2c_qa(
     code int primary key,
     originNo int not null,
     groupOrd int not null,
     title varchar(100) not null,
     content text not null, 
     id varchar(20),
     reg_date date not null,
     b2c_qa_check int,
     foreign key (id) references member(id) on delete cascade
);

create sequence seq_b2c_qa_num START WITH 1 INCREMENT BY 1;

desc notice;

commit;

select m.id,m.email,mea.auth_confirm from member m join memberEmailAuth mea on m.id=mea.id where mea.id='pny';

select * from memberEmailAuth;
select * from member;