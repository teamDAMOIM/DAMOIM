


-- tb_post 테이블 생성
CREATE TABLE tb_post(
    post_no INT auto_increment,
    post_title VARCHAR(255) NOT NULL,
    post_content VARCHAR(3000) NOT NULL,
    post_view_count INT NOT NULL default 0,
    post_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    member_id VARCHAR(255),


    CONSTRAINT pk_post
                    PRIMARY KEY (post_no),
    CONSTRAINT fk_id
                    FOREIGN KEY  (member_id)
                    REFERENCES tb_member (member_id)
                    ON DELETE CASCADE
)
;




-- 임시로 게시판 생성
-- member_id부분에 본인 member테이블에 있는 아이디 값 넣으삼