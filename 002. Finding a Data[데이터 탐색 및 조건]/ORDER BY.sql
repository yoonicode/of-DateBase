SELECT * FROM copang_main.member
WHERE (age BETWEEN 20 AND 29)
	# 나이가 20대이고,
	AND (gender = 'm')
		# 성별이 남자인 row를
ORDER BY height DESC, weight ASC
	# 키를 기준으로 내림차순 정렬 + 몸무게를 기준으로 오름차순 정렬
    
LIMIT 8, 1;
	# 정렬된 값 중 9번째 값만 출력