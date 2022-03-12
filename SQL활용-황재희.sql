-- 1번 DB생성/사용자등록/권한설정
DROP DATABASE IF EXISTS member_DB;
CREATE DATABASE member_db;
-- DROP USER IF EXISTS  member_db@localhost;
-- create user member_db@localhost identified WITH mysql_native_password  by 'member_db';
-- grant all privileges on member_db.* to member_db@localhost with grant option;

-- 2번 테이블 생성
USE member_DB;
CREATE TABLE login_info(
	member_num INTEGER PRIMARY KEY AUTO_INCREMENT,
    member_id VARCHAR(18) NOT NULL UNIQUE,
    member_pass VARCHAR(18) NOT NULL
);

-- 3번 데이터 삽입
INSERT INTO login_info VALUES(1, 'asdf1', 'asdf1');
INSERT INTO login_info VALUES(2, 'asdf2', 'asdf2');
INSERT INTO login_info VALUES(3, 'asdf3', 'asdf3');
INSERT INTO login_info VALUES(4, 'asdf4', 'asdf4');
INSERT INTO login_info VALUES(5, 'asdf5', 'asdf5');
INSERT INTO login_info VALUES(6, 'asdf6', 'asdf6');
INSERT INTO login_info VALUES(7, 'asdf7', 'asdf7');
INSERT INTO login_info VALUES(8, 'asdf8', 'asdf8');
INSERT INTO login_info VALUES(9, 'asdf9', 'asdf9');
INSERT INTO login_info VALUES(10, 'asdf10', 'asdf10');

-- 4번 데이터 선택
SELECT * FROM login_info;

-- 5번 테이블 생성
USE member_DB;
CREATE TABLE notice(
	notice_num INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    notice_tit VARCHAR(40) NOT NULL,
    notice_txt VARCHAR(100),
    notice_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    user_name VARCHAR(20),
    user_num INTEGER NOT NULL
);

-- 6번 데이터 삽입
INSERT INTO notice VALUES(1, '택배노조 파업으로 배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'홍길동',1
);
INSERT INTO notice VALUES(2, '오늘드림 & 픽업 서비스 사용설명서 페이지 안내', '안녕하세요, 오늘드림 & 픽업 서비스에 대한 상세 안내를 확인하실 수 있는 페이지를 안내드립니다.',
                            sysdate(),'홍길동',1
);
INSERT INTO notice VALUES(3, '영상정보처리기기 운영/관리 방침 개정 안내', '1. 개정 내용 - 설치 현황 및 관리책임자/접근권한자 등 현행화',
                            sysdate(),'윤길동',2
);
INSERT INTO notice VALUES(4, '개인정보 처리방침 개정 안내', '1. 개정 내용 - 카카오싱크 간편회원 가입 서비스 : 수집 및 이용하는 개인정보 항목',
                            sysdate(),'김길동',4
);
INSERT INTO notice VALUES(5, '택배노조 파업으로 배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'유길동',6
);
INSERT INTO notice VALUES(6, '오늘드림 & 픽업 서비스 사용설명서 페이지 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'홍길동',1
);
INSERT INTO notice VALUES(7, '영상정보처리기기 운영/관리 방침 개정 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'오길동',3
);
INSERT INTO notice VALUES(8, '개인정보 처리방침 개정 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'차길동',7
);
INSERT INTO notice VALUES(9, '택배노조 배송지연 서울안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'구길동',9
);
INSERT INTO notice VALUES(10, '택배노조 파업으로 인천배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'구길동',9
);
INSERT INTO notice VALUES(11, '택배노조 파업으로 부산배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'홍길동',1
);
INSERT INTO notice VALUES(12, '택배노조 파업으로 경기배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'오길동',3
);
INSERT INTO notice VALUES(13, '택배노조 파업으로 전국배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'이길동',10
);
INSERT INTO notice VALUES(14, '개인정보 처리방침 개정 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'황길동',5
);
INSERT INTO notice VALUES(15, '택배노조 파업으로 배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'황길동',5
);
INSERT INTO notice VALUES(16, '택배노조 파업으로 배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'윤길동',2
);
INSERT INTO notice VALUES(17, '택배노조 파업으로 배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'김길동',4
);
INSERT INTO notice VALUES(18, '택배노조 파업으로 배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'김길동',4
);
INSERT INTO notice VALUES(19, '택배노조 파업으로 배송지연 안내', '3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'홍길동',1
);
INSERT INTO notice VALUES(20, '택배노조 파업으로 배송지연 안내','3/2일부터 택배 노조 파업이 중단되었으나, 
							기존 파업 지역은 순차적으로 배송이 재개되어 일부 배송지연 및 회수지연이 발생할 수 있습니다.',
                            sysdate(),'김길동',8
);


-- 7번 데이터 선택
SELECT * FROM notice;

SELECT notice_num AS 일련번호, notice_tit AS 제목, notice_txt AS 내용, notice_date AS 작성일,
	   user_name AS 작성자, user_num AS 회원번호
FROM notice
ORDER BY notice_date ASC, notice_num DESC;

-- 8번 함수,조건 사용
SELECT substr(user_name,1,1) AS 성, count(user_name) AS 인원수
FROM notice
WHERE user_name LIKE '김%'
GROUP BY user_name;

-- 9번 데이터 삭제
-- DELETE FROM notice
-- WHERE NOT EXISTS(
-- 	SELECT notice_tit FROM notice
-- );

-- 10번 데이터 변경
UPDATE login_info
SET member_pass='qwer1234'
WHERE member_num=5;

select * from login_info;

-- 11번 인덱스
CREATE INDEX idx_notice
ON notice(notice_tit,user_name);

-- 12번 인덱스를 이용한 검색효율성
-- select * from notice where notice_tit='개인정보 처리방침 개정 안내';
-- select * from notice where user_name = '김길동';

-- 20개
-- select * from notice;

-- 13번 뷰의 생성
CREATE VIEW my_view(member_id,notice_tit,notice_txt,notice_date,user_name)
AS SELECT member_id,notice_tit,notice_txt,notice_date,user_name
FROM login_info,notice;

SELECT member_id AS 회원아이디,notice_tit AS 제목,notice_txt AS 내용,notice_date AS 작성일,user_name AS 작성자
FROM login_info,notice;

-- 14번 뷰의 생성
CREATE VIEW my_view2
AS SELECT notice_tit,notice_date,user_name,member_id
FROM my_view;

SELECT notice_tit AS 제목,notice_date AS 작성일,user_name AS 작성자,member_id AS 회원아이디
FROM my_view;

-- 15번 생성된 모든 database요소들 삭제
-- DROP TABLE login_info,notice;




