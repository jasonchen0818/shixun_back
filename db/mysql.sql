DROP DATABASE IF EXISTS springbootUCW7v;

CREATE DATABASE springbootUCW7v default character set utf8mb4 collate utf8mb4_general_ci;

USE springbootUCW7v;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	`dizhi` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,dizhi) VALUES('用户1','123456','姓名1','男','yonghu_touxiang1','020-89819991','地址1');
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,dizhi) VALUES('用户2','123456','姓名2','男','yonghu_touxiang2','020-89819992','地址2');
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,dizhi) VALUES('用户3','123456','姓名3','男','yonghu_touxiang3','020-89819993','地址3');


DROP TABLE IF EXISTS `shujifenlei`;

CREATE TABLE `shujifenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`fenlei` varchar(200) NOT NULL   COMMENT '分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍分类';

INSERT INTO shujifenlei(fenlei) VALUES('分类1');
INSERT INTO shujifenlei(fenlei) VALUES('分类2');
INSERT INTO shujifenlei(fenlei) VALUES('分类3');


DROP TABLE IF EXISTS `shuji`;

CREATE TABLE `shuji` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shujibianhao` varchar(200)  UNIQUE   COMMENT '书籍编号',
	`shujimingcheng` varchar(200) NOT NULL   COMMENT '书籍名称',
	`fenlei` varchar(200) NOT NULL   COMMENT '分类',
	`fengmian` varchar(200)    COMMENT '封面',
	`zuozhe` varchar(200)    COMMENT '作者',
	`chubanshe` varchar(200)    COMMENT '出版社',
	`jiage` int    COMMENT '价格',
	`shuliang` int    COMMENT '数量',
	`shujijieshao` longtext    COMMENT '书籍介绍',
	`clicktime` datetime    COMMENT '最近点击时间',
	`clicknum` int   default '0' COMMENT '点击次数',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍';

INSERT INTO shuji(shujibianhao,shujimingcheng,fenlei,fengmian,zuozhe,chubanshe,jiage,shuliang,shujijieshao,clicktime,clicknum) VALUES('书籍编号1','书籍名称1','分类1','shuji_fengmian1','作者1','出版社1',1,1,'书籍介绍1',CURRENT_TIMESTAMP,1);
INSERT INTO shuji(shujibianhao,shujimingcheng,fenlei,fengmian,zuozhe,chubanshe,jiage,shuliang,shujijieshao,clicktime,clicknum) VALUES('书籍编号2','书籍名称2','分类2','shuji_fengmian2','作者2','出版社2',2,2,'书籍介绍2',CURRENT_TIMESTAMP,2);
INSERT INTO shuji(shujibianhao,shujimingcheng,fenlei,fengmian,zuozhe,chubanshe,jiage,shuliang,shujijieshao,clicktime,clicknum) VALUES('书籍编号3','书籍名称3','分类3','shuji_fengmian3','作者3','出版社3',3,3,'书籍介绍3',CURRENT_TIMESTAMP,3);


DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)  UNIQUE   COMMENT '订单编号',
	`shujimingcheng` varchar(200)    COMMENT '书籍名称',
	`fenlei` varchar(200)    COMMENT '分类',
	`fengmian` varchar(200)    COMMENT '封面',
	`jiage` varchar(200)    COMMENT '价格',
	`shuliang` int    COMMENT '数量',
	`zongjiage` varchar(200)    COMMENT '总价格',
	`xiadanriqi` date    COMMENT '下单日期',
	`beizhu` varchar(200)    COMMENT '备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`shouji` varchar(200)    COMMENT '手机',
	`dizhi` varchar(200)    COMMENT '地址',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息';

INSERT INTO dingdanxinxi(dingdanbianhao,shujimingcheng,fenlei,fengmian,jiage,shuliang,zongjiage,xiadanriqi,beizhu,yonghuming,shouji,dizhi,ispay) VALUES('订单编号1','书籍名称1','分类1','dingdanxinxi_fengmian1','价格1',1,'总价格1',CURRENT_TIMESTAMP,'备注1','用户名1','手机1','地址1','未支付');
INSERT INTO dingdanxinxi(dingdanbianhao,shujimingcheng,fenlei,fengmian,jiage,shuliang,zongjiage,xiadanriqi,beizhu,yonghuming,shouji,dizhi,ispay) VALUES('订单编号2','书籍名称2','分类2','dingdanxinxi_fengmian2','价格2',2,'总价格2',CURRENT_TIMESTAMP,'备注2','用户名2','手机2','地址2','未支付');
INSERT INTO dingdanxinxi(dingdanbianhao,shujimingcheng,fenlei,fengmian,jiage,shuliang,zongjiage,xiadanriqi,beizhu,yonghuming,shouji,dizhi,ispay) VALUES('订单编号3','书籍名称3','分类3','dingdanxinxi_fengmian3','价格3',3,'总价格3',CURRENT_TIMESTAMP,'备注3','用户名3','手机3','地址3','未支付');


DROP TABLE IF EXISTS `fahuoxinxi`;

CREATE TABLE `fahuoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)    COMMENT '订单编号',
	`shujimingcheng` varchar(200)    COMMENT '书籍名称',
	`fengmian` varchar(200)    COMMENT '封面',
	`shuliang` varchar(200)    COMMENT '数量',
	`fahuoriqi` date    COMMENT '发货日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`shouji` varchar(200)    COMMENT '手机',
	`dizhi` varchar(200)    COMMENT '地址',
	`dingdanzhuangtai` varchar(200) NOT NULL   COMMENT '订单状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发货信息';

INSERT INTO fahuoxinxi(dingdanbianhao,shujimingcheng,fengmian,shuliang,fahuoriqi,yonghuming,shouji,dizhi,dingdanzhuangtai) VALUES('订单编号1','书籍名称1','fahuoxinxi_fengmian1','数量1',CURRENT_TIMESTAMP,'用户名1','手机1','地址1','发货中');
INSERT INTO fahuoxinxi(dingdanbianhao,shujimingcheng,fengmian,shuliang,fahuoriqi,yonghuming,shouji,dizhi,dingdanzhuangtai) VALUES('订单编号2','书籍名称2','fahuoxinxi_fengmian2','数量2',CURRENT_TIMESTAMP,'用户名2','手机2','地址2','发货中');
INSERT INTO fahuoxinxi(dingdanbianhao,shujimingcheng,fengmian,shuliang,fahuoriqi,yonghuming,shouji,dizhi,dingdanzhuangtai) VALUES('订单编号3','书籍名称3','fahuoxinxi_fengmian3','数量3',CURRENT_TIMESTAMP,'用户名3','手机3','地址3','发货中');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');


DROP TABLE IF EXISTS `discussshuji`;

CREATE TABLE `discussshuji` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍评论表';

INSERT INTO discussshuji(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussshuji(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussshuji(refid,content,userid) VALUES(3,'评论内容3',3);



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

