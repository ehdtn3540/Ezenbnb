select * from tab;
select * from E_UTILL;
drop table E_UTILL;
drop sequence seq_utidx;

CREATE TABLE E_UTILL(
    uIDX NUMBER(5) PRIMARY KEY, --유틸번호
    uNAME VARCHAR2(100) --유틸이름
);

create sequence seq_utidx  nocache nocycle;

INSERT INTO E_UTILL(uIDX, uNAME) 
VALUES (seq_utidx.nextval, '집전체');
INSERT INTO E_UTILL(uIDX, uNAME) 
VALUES (seq_utidx.nextval, '독특한공간');
INSERT INTO E_UTILL(uIDX, uNAME) 
VALUES (seq_utidx.nextval, '반려동물');
INSERT INTO E_UTILL(uIDX, uNAME) 
VALUES (seq_utidx.nextval, '방갈로');
INSERT INTO E_UTILL(uIDX, uNAME) 
VALUES (seq_utidx.nextval, '수영장');

SELECT *
FROM E_HOUSE, E_UTILL
WHERE hUTILL = 1 and uIDX = 1

SELECT uNAME
FROM E_UTILL
WHERE uIDX = 1

--유틸에 이름을 가져와야지
--시발아