create table if not exists `news`
(
    id int auto_increment primary key,
    name varchar(100) not null,
    content varchar(5000) not null ,
    insert_time datetime not null default  current_timestamp,
    update_time datetime not null default  current_timestamp on update current_timestamp

);
create table if not exists `announcement`
(
    id int auto_increment primary key,
    name varchar(100) not null,
    content varchar(5000) not null ,
    insert_time datetime not null default  current_timestamp,
    update_time datetime not null default  current_timestamp on update current_timestamp

);