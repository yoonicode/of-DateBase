SELECT * FROM copang_main.member
WHERE (age BETWEEN 20 AND 29)
	# 나이가 20대이고,
    AND MONTH(sign_up_day) = 7;
		# 가입월이 7월인 회원 추출