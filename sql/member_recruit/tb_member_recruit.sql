-- tb_member_recruit 테이블 생성


CREATE TABLE tb_member_recruit(
    member_id VARCHAR(255),
    recruit_no INT,

    PRIMARY KEY (member_id, recruit_no),
    FOREIGN KEY (member_id) REFERENCES tb_member (member_id),
    FOREIGN KEY (recruit_no) REFERENCES tb_recruit (recruit_no)
);

