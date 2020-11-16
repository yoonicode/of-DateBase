ALTER TABLE `delivery`
	# 외래키를 추가하기 위하여 ALTER 구문 사용
    ADD CONSTRAINT `fk_delivery_order`
		# 외래키도 일종의 제약사항이므로 CONSTRAINT 구문 사용, 제약명은 fk_delivery_order
    FOREIGN KEY (`order_id`)
		# delivery 테이블의 order_id 컬럼을 외래키로 지정
    REFERENCES `customer_order` (`id`)
		# 외래키가 참조할 컬럼은 customer_order 테이블의 id 컬럼
    ON UPDATE CASCADE
		# 부모 ROW의 갱신 시 자식 ROW도 함께 갱신되도록 정책 적용
    ON DELETE SET NULL;
		# 부모 ROW의 삭제 시 자식 ROW의 값을 NULL로 대체하도록 정책 적용


DELETE FROM customer_order WHERE id = 10000;
UPDATE customer_order SET id = 21000 WHERE id = 10001;

SELECT * FROM delivery;