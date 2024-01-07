package com.project.damoim.recruit.service;

import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.member.dto.response.LoginSessionDTO;
import com.project.damoim.post.common.Search;
import com.project.damoim.recruit.common.RecruitSearch;
import com.project.damoim.recruit.dto.request.RecuritRequestDTO;
import com.project.damoim.recruit.dto.response.RecuriitDetileResponseDTO;
import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.repository.RecruitMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class RecuritService {
    private final RecruitMapper recruitMapper;


    public List<Recruit> findAll(){

        return recruitMapper.find().stream()
                .collect(Collectors.toList())
                ;
    }


    public List<RecuritResponseDTO> getListRecurit(String type, String keyword, HttpSession session){

        return recruitMapper.findAll(type, keyword).stream()
                .map(recruit -> new RecuritResponseDTO(recruit, session))
                .collect(Collectors.toList())
                ;
    }

    public boolean saveRecurit(RecuritRequestDTO dto, HttpSession session){
        String loginUserId = LoginUtiles.LoginUserId(session);
        return recruitMapper.save(dto.isEntity(loginUserId));
    }

    public RecuriitDetileResponseDTO detailRecurit(int rno){
        Recruit recruit = recruitMapper.findOne(rno);
        return new RecuriitDetileResponseDTO(recruit);
    }

    public List<RecuritResponseDTO> getSortRecurit(HttpSession session){
        String addreass = LoginUtiles.LoginUserAddress(session);

        return recruitMapper.findSortRecruit(addreass).stream()
                .map(recruit -> new RecuritResponseDTO(recruit, session))
                .collect(Collectors.toList())
                ;
    }

    public void upCount(int rno){
        recruitMapper.upCount(rno);
    }
}
