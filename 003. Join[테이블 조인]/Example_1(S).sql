SELECT p.name, COALESCE(s.sales_volume, '판매량 정보 없음') AS '판매량'
	/* 
    출력예시를 토대로 pizza_price_cost 테이블의 name 컬럼, sales 테이블의 sales_volume 컬럼을 출력
    예시에서는 NULL값을 '판매량 정보 없음'으로 표기되었으므로 COALESCE 함수를 이용하여 설정,
    sales_volume 테이블명이 '판매량'으로 출력되고 있으므로 Alias를 이용하여 설정
    */
    
FROM pizza_price_cost AS p LEFT OUTER JOIN sales AS s
	/* 예시를 보면 pizza_price_cost 테이블을 기준으로 JOIN이 되었음을 알 수 있다.
    만약 NULL 값을 가진 로우들은 노출되지 않았다면 sales 테이블이 기준이었을 것이다.
    
    SQL문의 가독성 확보를 위하여 각각 테이블을 p, s라는 이름으로 Alias 하고 구문 전체를 수정해주었다.
    */
    
ON p.id = s.menu_id;
	# JOIN의 조건으로 p 테이블의 id 컬럼과 s 테이블의 menu_id 컬럼이 일치하는 경우를 설정했다.

