package com.project.damoim.recruit.service;

import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.member.dto.response.LoginSessionDTO;
import com.project.damoim.recruit.dto.request.RecuritRequestDTO;
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

    public List<RecuritResponseDTO> getListRecurit(){

        return recruitMapper.findAll().stream()
                .map(recruit -> new RecuritResponseDTO(recruit))
                .collect(Collectors.toList())
                ;
    }

    public boolean saveRecurit(RecuritRequestDTO dto){
        return recruitMapper.save(dto.isEntity());
    }

    public Recruit detailRecurit(int rno){
        recruitMapper.viewUpCount(rno);
        return recruitMapper.findOne(rno);
    }

    public List<RecuritResponseDTO> getSortRecurit(HttpSession session){
        String addreass = LoginUtiles.LoginUserAddress(session);

        return recruitMapper.findSortRecruit(addreass).stream()
                .map(recruit -> new RecuritResponseDTO(recruit))
                .collect(Collectors.toList())
                ;
    }
}
