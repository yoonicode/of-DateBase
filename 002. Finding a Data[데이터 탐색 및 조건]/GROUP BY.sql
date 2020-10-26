#SELECT gender FROM copang_main.member GROUP BY gender;
	# gender Column의 값(m, f)을 기준으로 Row 그루핑
    
#SELECT gender, COUNT(*), AVG(height), MAX(weight) FROM copang_main.member GROUP BY gender;
	# 그루핑된 상태에서 이러한 '집계함수'를 사용하면, 함수가 그룹별로 실행됨

SELECT SUBSTRING(address, 1, 2) AS region, gender, COUNT(*)
FROM copang_main.member
GROUP BY SUBSTRING(address, 1, 2), gender
HAVING region IS NOT NULL
ORDER BY region ASC, gender DESC;
	# 그루핑의 기준을 2개 이상으로 증가 : 1기준(주소), 2기준(성별) - 더 세분화된 그루핑 가능
    # 그 중에서 region 값이 NULL이 아닌 그룹의 결과만 출력하도록 HAVING 함수를 이용하여 설정
    
    