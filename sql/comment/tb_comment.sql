

-- tb_comment
CREATE TABLE tb_comment(
    comment_no INT auto_increment,
    comment_content VARCHAR(255) NOT NULL,
    comment_date DATETIME default current_timestamp,
    comment_username VARCHAR(10) NOT NULL,
    post_no INT,
    member_id VARCHAR(255),
    like_count int not null,

    CONSTRAINT pk_no
            PRIMARY KEY (comment_no),

    CONSTRAINT fk_no
            FOREIGN KEY (post_no)
                REFERENCES tb_post (post_no)
                    ON DELETE CASCADE,

    CONSTRAINT fk_member_id
            FOREIGN KEY (member_id)
                REFERENCES tb_member (member_id)
);