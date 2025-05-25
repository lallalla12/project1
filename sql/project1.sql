create database musthave;

use musthave;

-- member table 만들기
create table member(
usernum int auto_increment primary key,					-- 회원 번호
userid varchar(20) not null unique,						-- 사용자 ID
password varchar(100) not null,							-- 사용자 pssword
name varchar(50) not null,								-- 사용자 이름
phonenum varchar(20) not null unique,					-- 사용자 폰번호
email varchar(100) not null unique,						-- 이메일
reg_date datetime not null default current_timestamp	-- 가입날짜
);

desc member;

select *
from member;


