-- 先执行
CREATE database `ssmdm`;
use ssmdm;
-- user-table
CREATE TABLE `ssmdm`.`user`  (
  `uId` int NOT NULL AUTO_INCREMENT,
  `uEmail` varchar(255) NOT NULL,
  `uPwd` varchar(255) NOT NULL,
  `uTel` bigint NOT NULL,
  `uName` varchar(100) NULL,
  `uNum` bigint NULL,
  `uAge` int(200) NULL,
  `uSex` varchar(50) NULL,
  `uAvatar` multipoint NULL,
  `uAdd` varchar(255) NULL,
  `uTime` TIMESTAMP default	CURRENT_TIMESTAMP  NOT NULL,
  PRIMARY KEY (`uId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into `ssmdm`.`user` (
`uEmail`,`uPwd`,`uTel`,`uName`,`uNum`,`uAge`,`uSex`,`uAdd`,`uTime`
)values(
"aliketh@dm.net","aliketh",18177777777,"alikeh",111222333444555666,20,"female","jiangxijian","2020-05-13 14:52:00"
);
insert into `ssmdm`.`user` (
`uEmail`,`uPwd`,`uTel`,`uName`,`uNum`,`uAge`,`uSex`,`uAdd`,`uTime`
)values(
"test@dm.net","test",16165656565,"test",112233445566778899,23,"female","jiangxinanchang","2020-05-14 13:52:00"
);
--user-log-table
create table "ssmdm"."user-log"(
  `lId` int not null PRIMARY KEY ,
  `lSys` varchar(100) null,
  `lTime`TIMESTAMP default	CURRENT_TIMESTAMP  NOT NULL,
  `lIp` varchar(50) null
);

--user-data-table
create table `ssmdm`.`userdate`(
  `dId`       bigint          NOT NULL AUTO_INCREMENT	 primary key ,
  `iEmail`    varchar(255)    not null ,
  `dLink`     varchar(600)    not null ,
  `dTag`      varchar(200)    null ,
  `dAnn`      varchar(300)    null ,
  `iTel`      bigint          not null ,
  `iTime`     TIMESTAMP default	CURRENT_TIMESTAMP  NOT NULL
)ENGINE=INNODB;DEFAULT CHARSET=utf8;
-- 4*6=36
insert into `ssmdm`.`userdate`(iEmail, dLink, dTag, dAnn, iTel)
values("aliketh@dm.net","D:\packages\apppackage","install、exe","install、 package 、app",12336363636);
insert into `ssmdm`.`userdate`(iEmail, dLink, dTag, dAnn, iTel)
values("aliketh@dm.net","E:\datapc","zip、7z","compress、 package",12336363636);
insert into `ssmdm`.`userdate`(iEmail, dLink, dTag, dAnn, iTel)
values("aliketh@dm.net","D:\All Data","directory","directory 、file",12336363636);
insert into `ssmdm`.`userdate`(iEmail, dLink, dTag, dAnn, iTel)
values("aliketh@dm.net","D:\Other Data\media","install、exe","media",12336363636);

-- foreign key