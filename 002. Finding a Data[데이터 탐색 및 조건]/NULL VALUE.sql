#SELECT * FROM copang_main.member WHERE height IS NULL;
	# height 컬럼이 NULL인 row만 출력

#SELECT * FROM copang_main.member WHERE height IS NOT NULL;
	# height 컬럼이 NULL이 아닌 row만 출력
    
SELECT *,
	COALESCE (height, '데이터 없음')
FROM copang_main.member;
	# height column에서 NULL값인 row는 '데이터 없음'으로 변환하여 출력


