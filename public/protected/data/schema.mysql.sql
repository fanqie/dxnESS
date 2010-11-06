use daxiniu;

CREATE TABLE IF NOT EXISTS user (
  username varchar(32) NOT NULL primary key,
  password varchar(32) NOT NULL,
  email varchar(256) not null default '0',
  user_type int(3) default 0,
  status int(3) default 0,
  avatar varchar(256) not null default '',
  reg_time TIMESTAMP NOT NULL DEFAULT NOW(),
  last_time TIMESTAMP NOT NULL,
  admin_id varchar(32) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE=utf8_bin;CREATE TABLE IF NOT EXISTS admin (
  username varchar(32) NOT NULL primary key,
  password varchar(32) NOT NULL,
  role int(3) default 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS post (
  uuid varchar(32) NOT NULL primary key,
  title varchar(256) NOT NULL,
  cate_id int,
  pub_time TIMESTAMP default NOW(),
  pre_content text default '',
  content text default '',
  user_id varchar(32) not null,
  status int default 0,
  read_count int default 0,
  operation_id varchar(32) NOT NULL,
  reference varchar(512),
  source varchar(128),
  operation_desc varchar(256),
  flag varchar(32) default '0,'
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS attachment (
  id int auto_increment NOT NULL  primary key,
  url varchar(256) NOT NULL ,
  uuid varchar(32) NOT NULL ,
  file_size int not null default 0,
  use_type int(3) default 0,
  status int(3) default 0,
  file_type varchar(32) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE=utf8_bin;CREATE TABLE IF NOT EXISTS category (
  id int auto_increment NOT NULL primary key,
  name varchar(64) NOT NULL ,
  short_name varchar(32) NOT NULL ,
  parent_id int not null default -1,
  sort int(3) default 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE=utf8_bin;