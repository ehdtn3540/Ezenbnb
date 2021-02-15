select * from tab;
select * from E_HOUSE;
drop table E_HOUSE;
drop sequence seq_hidx;

CREATE TABLE E_HOUSE(
    hIDX NUMBER(5) PRIMARY KEY, --숙소번호
    mIDX NUMBER(5), --회원번호
    hNAME VARCHAR2(100), --숙소이름
    hCATG VARCHAR2(100), --지역 카테고리
    hADDRESS VARCHAR2(100), --숙소주소
    hPHONE VARCHAR2(100), --전화번호
    hGRADE NUMBER(5) DEFAULT 0, --평점
    hIMAGE VARCHAR2(4000), --방이미지
    hFACILITY VARCHAR2(100), --편의시설
    hPRICE NUMBER(10), --가격
    hBED NUMBER(5), --침대수
    hBAT NUMBER(5), --욕실수
    hPERSON NUMBER(5), --인원수
    hUTILL NUMBER(5) DEFAULT 0--유틸
);

create sequence seq_hidx  nocache nocycle;


--truncate table E_HOUSE;

--시퀀스 맴버 방이름 주소 전화번호 이미지 편의시설 가격 침대 화장실 인원수
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 1, '파주꿈동산', '파주시', '경기도 파주시 탄현면 금승리 산34-2', '010-1111-1111', 'house1.jpg', '족구장1', 300001, 2, 2, 5, 1);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 2, '파주놀이동산', '파주시', '경기도 파주시 당하동 산4-1', '010-1111-1112', 'house2.jpg', '족구장2', 300002, 2, 2, 6, 2);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 3, '파주롯데월드', '파주시', '경기도 파주시 조리읍 대원리 992-1', '010-1111-1113', 'house3.jpg', '족구장3', 300003, 2, 2, 7, 3);

INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 4, '서울토박이', '서울시', '서울특별시 동작구 흑석동 233', '010-2222-2221', 'house4.jpg', '매점1', 360001, 3, 2, 4, 1);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 5, '서울촌놈', '서울시', '서울특별시 용산구 이태원동 730', '010-2222-2222', 'house5.jpg', '매점2', 360002, 3, 2, 5, 2);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 6, '서울거지', '서울시', '서울특별시 송파구 삼전동 138', '010-2222-2223', 'house6.jpg', '매점3', 360003, 3, 2, 6, 3);

INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 7, '부산해운대', '부산시', '부산광역시 남구 대연동 1134-7', '010-3333-3331', 'house7.jpg', '수영장1', 450001, 4, 3, 10, 1);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 8, '부산돼지국밥', '부산시', '부산광역시 해운대구 우동 1410', '010-3333-3332', 'house8.jpg', '수영장2', 450002, 4, 3, 9, 2);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hCATG, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON, hUTILL) 
VALUES (seq_hidx.nextval, 9, '부산놀이터', '부산시', '부산광역시 남구 용호동 940', '010-3333-3333', 'house9.jpg', '수영장3', 450003, 4, 3, 8, 3);

