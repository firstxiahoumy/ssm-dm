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
  `uAvatar` mediunblob NULL,
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


--user-data-table self-date
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
--user-log-table self-date
CREATE TABLE `ssmdm`.`userlog`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user` varchar(255) NULL COMMENT '用户',
  `loginWay` varchar(255) NULL COMMENT '登录方式',
  `mac` varchar(255) NOT NULL COMMENT '地址',
  `state` varchar(255) NOT NULL COMMENT '状态',
  `ip` varchar(255) NOT NULL COMMENT 'ip',
  `system` varchar(255) NOT NULL COMMENT '系统',
  `time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
)ENGINE=INNODB;DEFAULT CHARSET=utf8;
-- user-document-table  public-date
CREATE TABLE `ssmdm`.`userflie`  (
  `id` int NOT NULL COMMENT '编号',
  `uuid` varchar(255) NOT NULL COMMENT 'uuid',
  `fileformat` varchar(255) NOT NULL COMMENT '文件格式',
  `filename` varchar(255) NOT NULL COMMENT '文件名',
  `flieurl` varchar(255) NOT NULL COMMENT '文件地址',
  `time` timestamp NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
);
-- foreign key