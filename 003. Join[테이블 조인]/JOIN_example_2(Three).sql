SELECT i.name, i.id,
	r.item_id, r.star, r.comment, r.mem_id,
    m.id, m.email

FROM item AS i LEFT OUTER JOIN review AS r
	ON i.id = r.item_id
    # JOIN 1 : item 테이블을 기준으로 review 테이블과 JOIN 
    
    LEFT OUTER JOIN member AS m
		ON r.mem_id = m.id
		# JOIN 2 : JOIN 1의 결과를 바탕으로 해당 결과 테이블(기준)과 member 테이블을 JOIN