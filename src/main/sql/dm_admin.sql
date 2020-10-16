use ssmdm;
--admin-table
CREATE TABLE `ssmdm`.`admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `section` varchar(200) NULL,
  `name` varchar(255) NULL,
  `number` bigint NULL,
  `address` varchar(255) NULL,
  `age` int NULL,
  `sex` varchar(255) NULL,
  `avatar` multipoint NULL,
  `lTime` timestamp default CURRENT_TIMESTAMP  NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into `ssmdm`.`admin`
(`email`, `pwd`, `tel`, `section`, `name`, `number`, `address`, `age`, `sex`,`lTime`)
values(
"admin@dm.net","admin",1577777777,"dev","admin",202005201314520999,"china",25,"male","2020-05-20 13:14:22");
insert into `ssmdm`.`admin`
(`email`, `pwd`, `tel`, `section`, `name`, `number`, `address`, `age`, `sex`,`lTime`)
values(
"ningci@dm.net","admin",15788888888,"dev","ningci",111213141516171819,"china",25,"male","2020-05-20 13:14:22"
);
--data-table
create table `ssmdm`.`date`(
  dId bigint not null  AUTO_INCREMENT primary key ,
  iEmail varchar(255) not null ,
  dLink varchar(600) not null ,
  dTag varchar(200) null ,
  dAnn varchar(300) null ,
  iTel bigint not null foreign key ,
  iTime TIMESTAMP default	CURRENT_TIMESTAMP  NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--log-table
create table `ssmdm`.`log`(
  lId int not null AUTO_INCREMENT primary key ,
  lUser varchar(255) not null foreign key ,
  lIp varchar(100) not null,
  lHandle varchar not null,
  lSys varchar null ,
  uTime TIMESTAMP default	CURRENT_TIMESTAMP  not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;