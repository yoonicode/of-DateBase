CREATE TABLE `animal_info` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `type` VARCHAR(30) NOT NULL,
    `name` VARCHAR(10) NOT NULL,
    `age` TINYINT NOT NULL,
    `sex` CHAR(1) NOT NULL,
    `weight` DOUBLE NOT NULL,
    `feature` VARCHAR(500) NULL,
    `entry_date` DATE NOT NULL);

INSERT INTO animal_info (type, name, age, sex, weight, feature, entry_date) VALUES ('사자', '리오', 8, 'm', 170.5, '상당히 날렵하고 성격이 유순한 편임', '2015-03-21');
INSERT INTO animal_info (type, name, age, sex, weight, feature, entry_date) VALUES ('코끼리', '조이', 15, 'f', 3000, '새끼 때 무리에서 떨어져 길을 잃고 방황하다가 동물원에 들어와서 적응을 잘 마침', '2007-07-16');
INSERT INTO animal_info (type, name, age, sex, weight, feature, entry_date) VALUES ('치타', '매튜', 20, 'm', 62, '나이가 노령이라 최근 활동량이 현저히 줄어든 모습이 보임', '2003-11-20');

SELECT * FROM animal_info;




