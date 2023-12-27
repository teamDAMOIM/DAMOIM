package com.project.damoim.member.service;


import com.project.damoim.member.entity.Member;
import com.project.damoim.member.repository.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class MemberService {
    private final MemberMapper mapper;

    public boolean getMember(Member member) throws Exception{


        try {
            boolean flag = mapper.save(member);
            return flag;
        }
        catch (Exception e){
            log.warn(e.getMessage());
            return false;
        }
    }
}
