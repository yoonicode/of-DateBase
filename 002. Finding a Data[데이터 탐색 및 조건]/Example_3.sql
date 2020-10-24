SELECT name, price, price/cost,
	# name, price, price/cost 총 3개의 column을 읽어온다.

(CASE 
    WHEN price/cost >= 1 AND price/cost < 1.5 THEN "C. 저효율 메뉴"
    WHEN price/cost >= 1.5 AND price/cost < 1.7 THEN "B. 중효율 메뉴"
    WHEN price/cost >= 1.7 THEN "A. 고효율 메뉴"
END) AS efficiency
	# price를 cost로 나눈 값을 통해 조건을 판독하고, 판독결과로 만들어진 column을 efficiency로 alias 한다.

FROM pizza_price_cost
ORDER BY efficiency DESC, price ASC 
	# 정렬 1순위 : efficiency를 기준으로 내림차순, price를 기준으로 오름차순 정렬한다.
LIMIT 6;
	# 상위 6개의 row만 출력한다.


