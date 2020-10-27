/*SELECT
	item.id, item.name,
    stock.item_id, stock.inventory_count
    
FROM item LEFT OUTER JOIN stock
ON item.id = stock.item_id*/
	# item 테이블을 기준으로 item 테이블의 id 컬럼과 stock 테이블의 item_id 컬럼 값이 일치하면
    # 값이 일치하는 row를 연결

SELECT
	item.id, item.name,
    stock.item_id, stock.inventory_count
    
FROM item RIGHT OUTER JOIN stock
ON item.id = stock.item_id
	# stock 테이블을 기준으로 item 테이블의 id 컬럼과 stock 테이블의 item_id 컬럼값이 일치하면
    # 값이 일치하는 row를 연결