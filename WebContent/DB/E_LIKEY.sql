select * from tab;
select * from E_LIKEY;
drop table E_LIKEY;
drop sequence seq_lidx;

create sequence seq_lidx  nocache nocycle;
CREATE TABLE E_LIKEY(
    lIDX NUMBER(5) PRIMARY KEY, --좋아요 번호
    mIDX NUMBER(5), --회원번호
    hIDX NUMBER(5) --숙소번호
);

INSERT INTO E_LIKEY(lIDX, mIDX, hIDX) 
VALUES (seq_lidx.nextval, 1, 1);
INSERT INTO E_LIKEY(lIDX, mIDX, hIDX) 
VALUES (seq_lidx.nextval, 1, 2);
INSERT INTO E_LIKEY(lIDX, mIDX, hIDX) 
VALUES (seq_lidx.nextval, 1, 3);

--ex) HIDX, NAME, IMAGE, FACILITY, BED, BAT, HCATG, ADDR
SELECT A.hIDX, A.hNAME, A.hIMAGE, A.hFACILITY, A.hBED, A.hBAT, A.hCATG, A.hADDRESS, B.lIDX
FROM E_HOUSE A
JOIN E_LIKEY B
ON A.hIDX=B.hIDX
AND B.mIDX = '1'

DELETE E_LIKEY WHERE lIDX='1'