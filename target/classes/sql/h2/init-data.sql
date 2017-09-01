DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
	`name` VARCHAR(50) NULL DEFAULT NULL COMMENT '班级名称',
	`number` INT(11) NULL DEFAULT NULL COMMENT '班级人数',
	`color` VARCHAR(50) NULL DEFAULT NULL COMMENT '颜色'
)
COMMENT='学校表'
ENGINE=InnoDB
;

INSERT INTO `school` (`name`, `number`, `color`) VALUES
	('一班', 30,'#F7464A'),
	('二班', 35,'#949FB1'),
	('三班', 40,'#FDB45C'),
	('四班', 50,'#46BFBD'),
	('五班', 25,'#4D5360');
	('六班', 40,'#F7464A');
	('七班', 45,'#46BFBD');





