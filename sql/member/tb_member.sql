-- 테이블 전체 삭제



-- tb_member 테이블 생성

CREATE TABLE tb_member(
    member_id VARCHAR(255),
    member_password VARCHAR(255) NOT NULL,
    member_name VARCHAR(255) NOT NULL,
    member_phone VARCHAR(255) NOT NULL,
    member_address VARCHAR(255) NOT NULL,
    member_nickname VARCHAR(255) NOT NULL,

    CONSTRAINT pk_id
                      PRIMARY KEY (member_id)
);

delete from tb_member;

ALTER TABLE tb_member
ADD session_id VARCHAR(255)
;

ALTER TABLE tb_member
ADD auto_date DATETIME DEFAULT current_timestamp
;


SELECT
    *
FROM tb_member as a
JOIN tb_post as b
ON a.member_id =  b.member_id
WHERE a.member_id = 'jj3713'
;

