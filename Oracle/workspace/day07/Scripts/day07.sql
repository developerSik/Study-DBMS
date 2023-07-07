/*외부 조인*/
/*JOIN할 때 선행 또는 후행 중 하나의 테이블 정보를 모두 확인하고 싶을 때 사용한다.*/

/*STADIUM 테이블에서 홈 팀인 팀 정보 조회, 홈 팀이 없어도 경기장은 모두 조회*/
SELECT * FROM STADIUM;
SELECT * FROM TEAM;

SELECT NVL(T.TEAM_ID, '공용') TEAM_ID, STADIUM_NAME FROM 
TEAM T RIGHT OUTER JOIN STADIUM S
ON T.STADIUM_ID = S.STADIUM_ID;

/*브론즈*/
/*EMPLOYEES 테이블에서 JOB_ID가 SA_REP인 사원 전체 조회*/
SELECT * FROM EMPLOYEES
WHERE JOB_ID LIKE '%SA_REP%';

/*실버*/
/*PLAYER 테이블에서 팀 별 최대 몸무게*/
SELECT TEAM_ID , MAX(WEIGHT) FROM PLAYER
GROUP BY TEAM_ID;

/*골드*/
/*AVG 함수를 쓰지 않고 PLAYER 테이블에서 선수들의 평균 키 구하기*/
SELECT SUM(HEIGHT) / COUNT(HEIGHT) FROM PLAYER;
/*플래티넘*/
/*DEPT 테이블의 LOC별 평균 급여를 반올림한 값과 각 LOC별 SAL 총 합을 조회, 반올림: ROUND()*/
SELECT LOC, ROUND(AVG(SAL),2), SUM(SAL) FROM DEPT


/*다이아*/
/*PLAYER 테이블에서 팀 별 최대 몸무게인 선수의 전체 정보와 팀 명, 팀 전화번호 조회*/

/*마스터*/
/*EMP 테이블에서 HIREDATE가 FORD의 입사년도와 같은 사원 전체 정보 조회*/
/*EMPLOYEES 테이블에서 사원의 매니저 이름, 사원의 이름 조회, 매니저가 없는 사원은 본인이 매니저임을 표시*/
/*EMPLOYEES에서 각 사원별로 관리부서(매니저)와 소속부서(사원) 조회*/
