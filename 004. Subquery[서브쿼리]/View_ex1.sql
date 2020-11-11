#DESCRIBE employee
	# DESCRIBE를 이용하여 employee 테이블의 컬럼 구조 파악
    
CREATE VIEW v_emp AS 
	# 아래 SQL문을 토대로 v_emp라는 이름의 뷰를 생성
SELECT id, name, age, department, phone_num, hire_date
FROM employee;
	# employee 테이블에서 아이디부터 고용일까지만 출력하는 테이블을 추출
    
SELECT * FROM v_emp;

