select * from tab;
select * from E_MSG;

drop table E_MSG;
drop sequence seq_msgidx;

create sequence seq_msgidx nocache nocycle;

CREATE TABLE E_MSG(
    msgIDX NUMBER(5) PRIMARY KEY, --메세지번호
    mCONTENT CLOB, --메세지 내용
    mTIME DATE DEFAULT SYSDATE, --메세지 전송시간
    mIDX NUMBER(5),
    userID VARCHAR2(30), -- 유저 아이디
    chatIDX NUMBER(5) --채팅방 아이디
);

INSERT INTO E_MSG(msgIDX, mCONTENT, userID, chatIDX) 
VALUES (seq_msgidx.nextval, 'test1234 테스트당', 'aaa', 1);
INSERT INTO E_MSG(msgIDX, mCONTENT, userID, chatIDX) 
VALUES (seq_msgidx.nextval, 'test1234 테스트당', 'admin', 1);

INSERT INTO E_MSG(msgIDX, mCONTENT, userID, chatIDX) 
VALUES (seq_msgidx.nextval, 'test1234 테스트당22', 'bbb', 2);
INSERT INTO E_MSG(msgIDX, mCONTENT, userID, chatIDX) 
VALUES (seq_msgidx.nextval, 'test1234 테스트당22', 'admin', 2);

select * from tab;
select * from E_CHATROOM;

drop table E_CHATROOM;
drop sequence seq_chatidx;

create sequence seq_chatidx nocache nocycle;

CREATE TABLE E_CHATROOM(
    chatIDX NUMBER(5) --채팅방 아이디
);

INSERT INTO E_CHATROOM(chatIDX) 
VALUES (seq_chatidx.nextval)

SELECT A.chatIDX
FROM E_CHATROOM A
JOIN E_MSG B
ON A.chatIDX=B.chatIDX
WHERE B.userID='admin'