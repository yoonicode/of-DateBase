SELECT MAX(copang_report.price) AS max_price,
AVG(copang_report.star) AS avg_star,
COUNT(DISTINCT(copang_report.email)) AS distinct_email_count

FROM 
	# FROM 절 이하에 서브쿼리를 삽입하여 derived table로 만듦
(SELECT i.price, r.star, m.email 
FROM member AS m INNER JOIN review AS r
    on r.mem_id = m.id
INNER JOIN item AS i
    on r.item_id = i.id) AS copang_report;
    # member, review, item : 총 3개의 테이블을 INNER JOIN 하여 최대가격, 평균평점, 이메일 개수 파악을 위한 별개의 테이블로 생성
