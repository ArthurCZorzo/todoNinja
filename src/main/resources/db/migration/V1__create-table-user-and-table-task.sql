create table tb_user(
    id int auto_increment,
    username varchar(255) not null,
    email varchar(255) not null,
    user_password varchar(255) not null,

    primary key(id)
);

create table tb_task(
    id int auto_increment,
    user_id int,
    task_name varchar(255) not null,
    task_description varchar(255) not null,
    completed boolean default false,

    primary key(id),
    foreign key(user_id) references tb_user(id)
);