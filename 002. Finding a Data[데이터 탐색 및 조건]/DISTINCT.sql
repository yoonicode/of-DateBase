#SELECT DISTINCT(age) FROM copang_main.member;
	# age column에서 중복된 값들을 제외한 고유값들만 출력
    
#SELECT DISTINCT(SUBSTRING(address, 1, 2)) FROM copang_main.member;
	# address column은 각각이 이미 고유값이므로, 시 단위를 기준으로 선별해야 고유값 파악 가능
    # 따라서 SUBSTRING 함수를 이용하여 앞 두 글자만 추출한 후, 그를 토대로 고유값 출력
    
SELECT COUNT(DISTINCT(SUBSTRING(address, 1, 2))) FROM copang_main.member;
	# 고유값의 개수를 구하는 방법 : COUNT 함수 이용