ALTER TABLE shoes RENAME COLUMN name TO model;
	# shoes 테이블의 name 컬럼을 model 컬럼으로 변경
ALTER TABLE shoes MODIFY size DOUBLE NOT NULL;
	# size 컬럼의 속성을 DOUBLE형 NN으로 변경
ALTER TABLE shoes DROP COLUMN brand;
	# brand 컬럼 삭제
ALTER TABLE shoes ADD stock INT NOT NULL;
	# stock 컬럼을 INT형 NN 속성으로 추가

# 체점용 코드
DESCRIBE shoes;