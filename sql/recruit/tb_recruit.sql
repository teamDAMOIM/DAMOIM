-- tb_recruit 테이블 생성

-- recruit 컬럼은 0과 1로 참과 거짓을 분류
CREATE TABLE tb_recruit(
    recruit_no INT,
    recruit_title VARCHAR(255) NOT NULL,
    recruit_content VARCHAR(3000) NOT NULL,
    recruit_category VARCHAR(255),
    recruit_startdate DATETIME DEFAULT current_timestamp,
    recruit_enddate DATETIME,
    recruit_addrass VARCHAR(255),
    recruit_count INT,
    recruit_max INT(10),
    member_id varchar(255),

    CONSTRAINT pk_rno
            PRIMARY KEY (recruit_no),

    CONSTRAINT foreign key fk_mid
               (member_id) references tb_member (member_id)
);


ALTER TABLE tb_recruit
MODIFY recruit_startdate DATETIME
;

ALTER TABLE tb_recruit MODIFY recruit_count INT NOT NULL;

alter table tb_recruit modify recruit_no int not null auto_increment;


drop table tb_recruit;
