SELECT YEAR(i.registration_date) AS '등록 연도', COUNT(*) AS '리뷰 개수', AVG(r.star) AS '별점 평균값'
FROM item AS i INNER JOIN review AS r
    ON i.id = r.item_id
    
    INNER JOIN member AS m
        ON r.mem_id = m.id
        
WHERE i.gender = 'u'
GROUP BY YEAR(i.registration_date)
    HAVING COUNT(*) > 9

ORDER BY AVG(r.star) DESC;    