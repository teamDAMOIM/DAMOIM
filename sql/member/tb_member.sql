-- tb_member 테이블 생성

CREATE TABLE tb_member(
    member_id VARCHAR(255),
    member_password VARCHAR(255) NOT NULL,
    member_name VARCHAR(5) NOT NULL,
    member_phone INT(10) NOT NULL,
    member_nickname VARCHAR(255) NOT NULL,
    CONSTRAINT pk_id
                      PRIMARY KEY (member_id)
)
;
