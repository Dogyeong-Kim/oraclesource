-- board 테이블 작성
CREATE TABLE BOARD(
	bno NUMBER(8) PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	content VARCHAR2(2000) NOT NULL,
	writer VARCHAR2(50) NOT NULL,
	regdate DATE DEFAULT SYSDATE 
);

CREATE SEQUENCE board_seq;

INSERT INTO board(bno, title, content, writer)
VALUES(board_seq.nextval, 'title1', 'content1', 'user1');

INSERT INTO STUDENTTBL(NAME) VALUES('홍길동');
INSERT INTO STUDENTTBL(NAME) VALUES('성춘향'); 

DROP TABLE student;
DROP TABLE HTE_STUDENTTBL;

-- Team(부모) 과 TeamMember(자식) 외래키 제약조건

-- insert : 부모 먼저 한다
INSERT INTO TEAM(TEAM_NAME) VALUES ('victory');
INSERT INTO TEAM(TEAM_NAME) VALUES ('hope');

INSERT INTO TEAM_MEMBER(USER_NAME, TEAM_TEAM_ID)  VALUES('홍길동',1);
INSERT INTO TEAM_MEMBER(USER_NAME, TEAM_TEAM_ID)  VALUES('성춘향',2);
-- delete : 자식 먼저 한다

SELECT * FROM team t1_0 LEFT JOIN team_member tm1_0 ON
t1_0.TEAM_ID  = tm1_0.TEAM_ID WHERE tm1_0.MEMBER_ID = 1;


-- todo 완료 목록
SELECT * FROM TODO t  WHERE t.COMPLETED = 1;

-- todo 미완료 목록
SELECT * FROM TODO t  WHERE t.COMPLETED = 0;

-- todo 중요 목록
SELECT * FROM TODO t  WHERE t.IMPORTANTED = 1;











