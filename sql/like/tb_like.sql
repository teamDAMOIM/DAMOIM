create table tb_like
(
    comment_no int not null,
    member_id  varchar(255),

    constraint foreign key
        fk_cm
                (comment_no) references tb_comment (comment_no)
)
;

delete from tb_like where comment_no = 10;