package com.project.damoim.recruit.service;

import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.repository.RecruitMapper;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

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

    public boolean saveRecurit(Recruit recruit){
        return recruitMapper.save(recruit);
    }

    public Recruit detailRecurit(int rno){
        return recruitMapper.findOne(rno);
    }
}
