INSERT INTO food_menu (menu, price, ingredient)
    VALUES ('라볶이', 5000, '라면, 떡, 양파..');
    
INSERT INTO food_menu (menu, price, ingredient)
    VALUES ('치즈김밥', 3000, '치즈, 김, 단무지..');
    
INSERT INTO food_menu (menu, price, ingredient)
    VALUES ('돈까스', 8000, '국내산 돼지고기, 양배추..');
    
INSERT INTO food_menu (menu, price, ingredient)
    VALUES ('오므라이스', 7000, '계란, 당근..');
		# id 컬럼에는 AI 옵션이 설정되어 있으므로 별도의 값을 주지 않아도 된다.
        # INSERT문 하나가 끝날 때 마다 세미콜론을 붙여야한다.


SELECT * FROM food_menu;