SELECT i.id, i.name, AVG(star) AS '별점 평균', COUNT(*) AS '별점 개수'
FROM member AS m LEFT OUTER JOIN review AS r
	ON m.id = r.mem_id
    LEFT OUTER JOIN item AS i
		ON i.id = r.item_id
		# member, review, item 등 3개의 테이블을 JOIN하여 회원성별에 따른 가장 인기있는 제품을 알아보고자 함

WHERE m.gender = 'f'
	# 회원 성별이 f인 row만 추출
    
GROUP BY i.id, i.name
	# item id를 기준으로 그루핑하여 별점 평균을 계산할 수 있도록 함
	HAVING COUNT(*) > 1
		# 리뷰가 1개 밖에 없는데 별점이 5점으로 1등 상품이 되는 것을 막기 위하여 리뷰 2개 이상으로 제한
ORDER BY AVG(star) DESC, COUNT(*) DESC
	# 별점 평균을 기준으로 1차 정렬하고, 동일한 별점에서는 리뷰가 많은 제품이 상위로 올라오도록 설정

