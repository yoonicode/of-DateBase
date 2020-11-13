#CREATE DATABASE course_rating;
	# course_rating 이라는 이름의 데이터베이스 생성
    
USE course_rating;
	# course_rating 이라는 데이터베이스를 활용할 것임을 설정
    
CREATE TABLE `course_rating`.`student` (
	# course_rating 데이터베이스에 student라는 테이블 생성
        
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NULL,
  `student_number` INT NULL,
  `major` VARCHAR(15) NULL,
  `email` VARCHAR(50) NULL,
  `phone` VARCHAR(15) NULL,
  `admission_date` DATE NULL,
		# 테이블에 들어갈 Column 기술, 순서대로 컬럼명 / 데이터타입 / 속성
    
  PRIMARY KEY (`id`));
		# Primary key로 id 컬럼을 지정
