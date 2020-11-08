SELECT * FROM review
	# 출력 예시를 보았을 때, 실질적으로 노출되는 테이블은 review 테이블이므로 Outer Query에서는 review 테이블을 이용한다.
    
WHERE item_id IN (SELECT id FROM item WHERE registration_date < '2019-01-01');
	# 출력되는 컬럼들의 조건은 '1. item 테이블에서 등록일자가 2019년 이전인 상품들의 id를 추출' / 
    # '2. 추출된 상품 아이디를 review 테이블의 item_id 컬럼과 비교하며 동일값이 있는 컬럼만 추출'