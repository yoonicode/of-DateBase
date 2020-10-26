#SELECT *, LENGTH(address) FROM copang_main.member;
	# address Column의 문자열 길이를 출력하는 함수

#SELECT UPPER(email) FROM copang_main.member;
	# email Column의 문자열 중 소문자를 모두 대문자로 변경(반대 : LOWER)
 
#SELECT LPAD(age, 8, '*') FROM copang_main.member;
	# age Column의 모든 값들을 왼쪽에 *를 첨가하여 8자리로 맞춤(오른쪽 기준 : RPAD)
    
SELECT TRIM(address) FROM copang_main.member;
	# address Column의 문자열 좌우측 공백을 제거