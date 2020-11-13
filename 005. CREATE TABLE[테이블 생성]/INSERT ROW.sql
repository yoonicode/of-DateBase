INSERT INTO student(id, name, student_number, major, email, phone, admission_date)
	VALUES(1, '성태후', 20142947, '컴퓨터공학과', 'taehos@naver.com', '010-1515-1234', '2014-03-12')
    
    # 새로운 row를 추가하기 위해서는, INSERT INTO 추가할 테이블명 (전체 컬럼명) VALUES(컬럼별 값) 순서로 작성해주면 된다.
    # 이 때, 전체 컬럼값이 NULL이 아닌 row를 추가할 경우 전체 컬럼명을 나열하지 않아도 된다.
    # 반대로 일부 컬럼의 값이 NULL인 경우에는 컬럼명을 나열하는 부분에서 해당 컬럼명을 제거해주어야한다.