USE copang_main; 
# copang_main 데이터베이스의 하위 테이블로 작업을 하겠다.

#SELECT * FROM member;
# member 테이블의 모든 row를 선택하여 불러와라

#SELECT id, age, gender FROM member;
# member 테이블에서 id, age, gender column만 모두 가져와라

#SELECT * FROM member WHERE age BETWEEN 30 AND 39;
# age가 30 이상 39 이하인 모든 row를 가져와라

#SELECT * FROM member WHERE age NOT BETWEEN 20 AND 29;
# age가 20대가 아닌 모든 row를 가져와라

#SELECT * FROM member WHERE sign_up_day > '2019-1-1';
# 가입일이 2019년 1월 1일 이후인 모든 row를 가져와라

SELECT * FROM member WHERE address LIKE '%고양시%';
# 주소에서 중간에 고양시라는 글자가 포함된 모든 row를 가져와라
 