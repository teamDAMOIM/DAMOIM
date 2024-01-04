


-- tb_post 테이블 생성
CREATE TABLE tb_post(
    post_no INT auto_increment,
    post_title VARCHAR(255) NOT NULL,
    post_content VARCHAR(3000) NOT NULL,
    post_view_count INT NOT NULL ,
    post_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    member_id VARCHAR(255),


    CONSTRAINT pk_post
                    PRIMARY KEY (post_no),
    CONSTRAINT fk_id
                    FOREIGN KEY  (member_id)
                    REFERENCES tb_member (member_id)
                    ON DELETE CASCADE
);



-- 임시로 게시판 생성
-- member_id부분에 본인 member테이블에 있는 아이디 값 넣으삼
INSERT INTO tb_post
    (post_title, post_content, post_view_count, member_id)
VALUES
    ('재밌는 코딩 시간', '정 말 재 밌어 ?', 0, 'jj3713')
;

-- 베스트 게시판 정렬 검사
SELECT
    post_title, post_view_count
FROM tb_post
ORDER BY post_view_count DESC
LIMIT 0, 5
;

ALTER TABLE tb_post
ADD like_button INT;