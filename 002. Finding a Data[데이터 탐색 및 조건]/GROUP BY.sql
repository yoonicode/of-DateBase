#SELECT gender FROM copang_main.member GROUP BY gender;
	# gender Column의 값(m, f)을 기준으로 Row 그루핑
    
SELECT gender, COUNT(*), AVG(height), MAX(weight) FROM copang_main.member GROUP BY gender;
	# 그루핑된 상태에서 이러한 '집계함수'를 사용하면, 함수가 그룹별로 실행됨
