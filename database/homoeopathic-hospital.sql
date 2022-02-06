
CREATE TABLE `homoeopathic-hospital`.`homoeopathic-hospital` ( `registration charge` INT(3) NOT NULL ) ENGINE = InnoDB;


CREATE TABLE `homoeopathic-hospital`.`registration charges` ( `SR NO` INT(3) NOT NULL , `PERTICULAR` VARCHAR(100) NOT NULL , `CHARGES` INT(4) NOT NULL ) ENGINE = InnoDB;

INSERT INTO `registration charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES ('1', 'REGISTRATION CHARGES ', '20')


CREATE TABLE `homoeopathic-hospital`.`dispensary charges` ( `SR NO` INT(3) NOT NULL , `PERTICULAR` VARCHAR(100) NOT NULL , `CHARGES` INT(4) NOT NULL ) ENGINE = InnoDB;

INSERT INTO `dispensary charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES ('2', '1 WEEK DISPENSARY CHARGES ', '100'), ('3', '2 WEEK DISPENSARY CHARGES ', '200')

INSERT INTO `dispensary charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES ('4', 'CHAYVANPRAS', '135'), ('5', 'OIL', '0')

INSERT INTO `dispensary charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES ('6', 'PANCHKARMA', '0'), ('7', 'BASTI', '0'), ('8', 'VAMAN', '0'), ('9', 'VIRECHANA', '0'), ('10', 'NAVYA', '0'), ('11', 'SHIRODHARA', '0'), ('12', 'JALOKAVACHARNA', '0'), ('13', 'AGNIKARMA', '0')

INSERT INTO `dispensary charges` (`SR NO`, `PERTICULAR`, `CHARGES`) VALUES ('14', 'ABHGANGA', '0'), ('15', 'LOCAL BASTI', '0')
