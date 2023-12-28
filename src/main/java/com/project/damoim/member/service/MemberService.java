package com.project.damoim.member.service;


import com.project.damoim.member.dto.request.LoginRequestDTO;
import com.project.damoim.member.dto.request.SignUpRequestDTO;
import com.project.damoim.member.dto.response.LoginSessionDTO;
import com.project.damoim.member.entity.Member;
import com.project.damoim.member.repository.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
@Slf4j
@RequiredArgsConstructor
public class MemberService {
    private final MemberMapper mapper;
    private final PasswordEncoder encoder;


    // 회원가입 처리
    public boolean saveMember(SignUpRequestDTO dto) throws Exception{
        try {
            boolean flag = mapper.save(dto.isEntity(encoder));
            return flag;
        }
        catch (Exception e){
            log.warn(e.getMessage());
            return false;
        }
    }


    // 로그인 검증 처리
    public LoginResult authenticate(LoginRequestDTO dto){
        Member member = mapper.findOne(dto.getId());
        log.debug("{}", member);

        if(member == null){
            log.info("아이디가 존재하지 않습니다");
            return LoginResult.NO_ID;
        }

        String inputPw = dto.getPw();
        String realPw = member.getMemberPassword();

        if (!encoder.matches(inputPw, realPw)){
            return LoginResult.NO_PW;
        }

        return LoginResult.SUCCESS;
    }

    private Member getMember(String id){
        return mapper.findOne(id);
    }

    // 아이디 비밀번호 중복 검사 서비스
    public boolean checkDuplicateValue(String type, String keyword){
        return mapper.isDuplicate(type, keyword);
    }

    public void LoginState(HttpSession session, String id) {
        // 멤버 가져오기
        Member member = getMember(id);

        LoginSessionDTO dto = LoginSessionDTO.builder()
                .id(member.getMemberId())
                .name(member.getMemberName())
                .nickName(member.getMemberNickname())
                .address(member.getMemberAddress())
                .build();

        session.setAttribute("login", dto);
        session.setMaxInactiveInterval(60 * 60); // 1시간
    }
}
