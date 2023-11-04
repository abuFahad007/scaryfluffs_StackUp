CREATE DATABASE IF NOT EXISTS `geeklogin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `geeklogin`;

create table if not exists `accounts` (
`id` int(11) not null auto_increment,
`username` varchar(50) not null,
`password` varchar(255) not null,
`email` varchar(100) not null,
primary key (`id`)
) engine=InnoDB auto_increment=2 default charset=utf8;