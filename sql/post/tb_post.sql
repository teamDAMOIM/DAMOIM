-- tb_post 테이블 생성


CREATE TABLE tb_post(
    post_no INT auto_increment,
    post_title VARCHAR(255) NOT NULL,
    post_content VARCHAR(3000) NOT NULL,
    post_view_count INT NOT NULL ,
    post_date DATE DEFAULT CURRENT_TIMESTAMP,
    member_id VARCHAR(255),

    CONSTRAINT pk_post
                    PRIMARY KEY (post_no),
    CONSTRAINT fk_id
                    FOREIGN KEY  (member_id)
                    REFERENCES tb_member (member_id)
                    ON DELETE CASCADE
);