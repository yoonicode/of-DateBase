UPDATE item SET is_deleted = 'Y' WHERE name = '남성정장 상하의 세트';
	# 논리 삭제 : 상품명이 남성정장인 row의 is_deleted 컬럼값을 갱신하여 논리 삭제하였다.
    
DELETE FROM item WHERE (is_deleted = 'Y') AND (DATEDIFF('2020-07-05', upload_date) > 365);
	# 물리 삭제 : 논리 삭제된 상태에서 1년이 지난 상품들을 물리 삭제하였다.

SELECT * FROM item;