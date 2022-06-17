-- ====================================
-- cnote 계정 생성
-- ====================================
alter session set "_oracle_script" = true;
create user cnote identified by cnote default tablespace users;
alter user cnote quota unlimited on users;
grant connect, resource, create view to cnote;


-- ============================
-- cnote 계정
-- ============================
create sequence uid_no;
select * from user_sequences;
--drop sequence uid_no;



drop table member;

create table member (
    member_id varchar2(20),
    password varchar2(300) not null,
    member_name varchar2(50) not null,
    member_role char(1) default 'U' not null,
    email varchar2(500),
    point number default 1000,
    enroll_date date default sysdate,
    constraint pk_member_id primary key (member_id),
    constraint ck_member_role check(member_role in ('U','A')),
    constraint uq_member_email unique(email)
);

create table member (
    member_id varchar2(20),
    password varchar2(300) not null,
    member_name varchar2(50) not null,
    member_role char(1) default 'U' not null,
    member_email varchar2(300),
    "uid" number, -- UID는 reserved words 중 하나이다. 그러므로 칼럼명으로 사용하려면 쌍따옴표를 씌워야 한다.
    enroll_date date default sysdate,
    constraint pk_member_id primary key (member_id),
    constraint ck_member_role check(member_role in ('U','A')),
    constraint uq_member_email unique(member_email)
);

insert into member values('cnote_admin', 'cnote1234`', '관리자', 'A', 'seanbryan97@naver.com', uid_no.nextval, default);
insert into member values('tester001', 'tester001', '테스팅 계정','U',null,uid_no.nextval,default);


select * from member;
commit;

