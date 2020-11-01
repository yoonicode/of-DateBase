SELECT old.id, old.name,
	new.id, new.name
#FROM item AS old LEFT OUTER JOIN item_new AS new
	# 구 item 테이블을 기준으로 신 item 테이블을 JOIN
    # : 기존 테이블에는 있지만 신규 테이블에 누락된 제품들을 파악 가능
    
#FROM item AS old RIGHT OUTER JOIN item_new AS new
	# 신 item 테이블을 기준으로 구 item 테이블과 JOIN
    # : 신규 테이블에는 추가 됐지만, 기존 테이블에는 추가되지 않은 제품 파악 가능

#FROM item AS old INNER JOIN item_new AS new
	# 두 테이블이 공통으로 가지고 있는 제품들만 추출
    
ON old.id = new.id

# WHERE old.id IS NULL : old 테이블에 추가되지 않은 제품만 추출 가능