SELECT * FROM item
UNION
SELECT * FROM item_new

	# 기존 테이블과 신규 테이블을 합쳐서 출력, 중복되는 요소는 1번씩만 출력