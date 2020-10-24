/*SELECT height, weight,
	weight / ((height/100) * (height/100)) 
FROM copang_main.member;
	# height, weight column을 통해 연산한 결과를 새로운 column으로 노출 */
    
/* SELECT height, weight,
    weight / ((height/100) * (height/100)) AS BMI
FROM copang_main.member;
	# column 간의 연산으로 만들어진 새로운 column을 BMI라는 이름으로 Alias */
    
/* SELECT CONCAT(height, 'cm', weight, 'kg') AS '키와 몸무게'
FROM copang_main.member;
    # 2개의 column과 문자열 등을 CONCAT 함수를 이용하여 연결하여 출력 */
    
SELECT height, weight,
    weight / ((height/100) * (height/100)) AS BMI,
(CASE
	WHEN weight / ((height/100) * (height/100)) IS NULL THEN '측정불가'
	WHEN weight / ((height/100) * (height/100)) >= 25 THEN '과체중 또는 비만'
	WHEN weight / ((height/100) * (height/100)) BETWEEN 18.5 AND 24 THEN '정상'
		ELSE '저체중'
END) AS '비만도 측정'
    
FROM copang_main.member;

	# CASE문을 이용하여 BMI column의 값별로 새로운 column에 값 출력
	# 이 때 CASE문에서 앞서 alias한 BMI라는 명칭을 사용할 수 없는데, 이는 서브쿼리로 해결 가능하다.