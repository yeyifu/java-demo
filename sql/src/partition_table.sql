--新建数据表，并分区
create table foo_range (
id int not null auto_increment,
created DATETIME,
primary key (id, created)
) engine = myisam CHARSET=utf8
partition by range (TO_DAYS(created))(
PARTITION foo_1 VALUES LESS THAN (TO_DAYS('2016-10-18')),
PARTITION foo_2 VALUES LESS THAN (TO_DAYS('2017-01-01'))
);
--新增一个分区
ALTER TABLE foo_range ADD PARTITION(
PARTITION foo_3 VALUES LESS THAN (TO_DAYS('2017-10-18'))
);
--插入数据
insert into `foo_range` (`id`, `created`) values (1, '2016-10-17'),(2, '2016-10-20'),(3, '2016-1-25');

--tel_myisam
CREATE TABLE `tel_myisam` (
  `id` int unsigned not null primary key AUTO_INCREMENT COMMENT '序号',
  `number_segment` int(3) unsigned not null COMMENT '号码段',
  `create_time` date COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

create table tem_date(
id int not null primary key auto_increment,
create_time date 
)ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tel_test` (
  `id` int unsigned not null primary key AUTO_INCREMENT COMMENT '主键',
  `number_segment` int(3) unsigned not null COMMENT '号码段',
  `tel` bigint not null COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `tel_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number_segment` int(3) unsigned NOT NULL COMMENT '号码段',
  `tel` bigint(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `tel_date` (
  `tel` bigint(255) unsigned NOT NULL COMMENT '电话号码',
  `number_segment` tinyint(3) unsigned NOT NULL COMMENT '号码段',
  `create_time` timestamp not null default current_timestamp on update current_timestamp COMMENT '创建时间',
  PRIMARY KEY (`tel`,`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
partition by range(unix_timestamp(create_time))(
partition p0 values less than (unix_timestamp('2018-01-01 00:00:00')),
partition p1 values less than (unix_timestamp('2018-02-01 00:00:00')),
partition p2 values less than (unix_timestamp('2018-03-01 00:00:00')),
partition p3 values less than (unix_timestamp('2018-04-01 00:00:00')),
partition p4 values less than (unix_timestamp('2018-05-01 00:00:00')),
partition p5 values less than (unix_timestamp('2018-06-01 00:00:00')),
partition p6 values less than (unix_timestamp('2018-07-01 00:00:00')),
partition p7 values less than (unix_timestamp('2018-08-01 00:00:00')),
partition p8 values less than (unix_timestamp('2018-09-01 00:00:00')),
partition p9 values less than (unix_timestamp('2018-010-01 00:00:00')),
partition p10 values less than (unix_timestamp('2018-011-01 00:00:00')),
partition p11 values less than (unix_timestamp('2018-012-01 00:00:00')),
partition p12 values less than maxvalue
);


--创建分区表(按照时间分区)
 CREATE TABLE `tel_yyf` (
  `tel` bigint(255) unsigned NOT NULL COMMENT '电话号码',
  `number_segment` tinyint(3) unsigned NOT NULL COMMENT '号码段',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`tel`,`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
partition by range(unix_timestamp(create_time))(
partition p0 values less than (unix_timestamp('2018-01-01 00:00:00')),
partition p1 values less than (unix_timestamp('2018-02-01 00:00:00')),
partition p2 values less than (unix_timestamp('2018-03-01 00:00:00')),
partition p3 values less than (unix_timestamp('2018-04-01 00:00:00')),
partition p4 values less than (unix_timestamp('2018-05-01 00:00:00')),
partition p5 values less than (unix_timestamp('2018-06-01 00:00:00')),
partition p6 values less than (unix_timestamp('2018-07-01 00:00:00')),
partition p7 values less than (unix_timestamp('2018-08-01 00:00:00')),
partition p8 values less than (unix_timestamp('2018-09-01 00:00:00')),
partition p9 values less than (unix_timestamp('2018-010-01 00:00:00')),
partition p10 values less than (unix_timestamp('2018-011-01 00:00:00')),
partition p11 values less than (unix_timestamp('2018-012-01 00:00:00')),
partition p12 values less than maxvalue
);

--创建分区表(按照字段分区)
CREATE TABLE `tel_number_segment` (
  `tel` bigint(255) unsigned NOT NULL COMMENT '电话号码',
  `number_segment` tinyint(3) unsigned NOT NULL COMMENT '号码段',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`tel`,`number_segment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
partition by list (number_segment)(
partition a values in (134),
partition b values in (135),
partition c values in (137),
partition d values in (151),
partition e values in (156),
partition f values in (171),
partition j values in (172),
partition h values in (182),
partition i values in (189)
);
--添加分区
ALTER TABLE tel_number_segment add partition (partition g values in (147));



SELECT
      partition_name part, 
      partition_expression expr, 
      partition_description descr, 
      table_rows 
FROM
      INFORMATION_SCHEMA.partitions 
WHERE
      TABLE_SCHEMA = 'test'
AND TABLE_NAME='tel_date' ;




