-- 테이블 생성
CREATE TABLE GAME_USERS(
    ID VARCHAR(255),
    DISTANCE INT,
    TIME_SPENT DECIMAL,
    BEST_DATE DATE
);

-- 데이터 입력
INSERT INTO GAME_USERS VALUES ('gamer2', 141900, 6.131903793, TO_DATE('2016-11-21 07:00:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO GAME_USERS VALUES ('ayrmogul500', 110000, 8.111473256, TO_DATE('2016-11-19 16:17:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO GAME_USERS VALUES ('abcdef', 65000, 4.093933119, TO_DATE('2016-12-04 19:45:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO GAME_USERS VALUES ('hola201', 5321, 5.694752452, TO_DATE('2016-12-04 04:47:58', 'YYYY-MM-DD HH24:MI:SS'));

-- 저장
COMMIT;

-- 데이터 조회
SELECT ID, CASE WHEN DISTANCE >= 130000 THEN 'DIAMOND'
                WHEN DISTANCE >= 100000 AND DISTANCE < 130000 THEN 'GOLD'
                WHEN DISTANCE >= 50000 AND DISTANCE < 100000 THEN 'SILVER'
                WHEN DISTANCE < 50000 THEN 'BRONZE'
                END TIER
FROM GAME_USERS
ORDER BY 1 DESC;
