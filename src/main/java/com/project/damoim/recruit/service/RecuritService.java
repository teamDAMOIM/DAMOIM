package com.project.damoim.recruit.service;

import com.project.damoim.recruit.dto.request.RecuritRequestDTO;
import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.repository.RecruitMapper;
import lombok.RequiredArgsConstructor;
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
        List<RecuritResponseDTO> collect = recruitMapper.findAll().stream()
                .map(recruit -> new RecuritResponseDTO(recruit))
                .collect(Collectors.toList());
        for (RecuritResponseDTO recuritResponseDTO : collect) {
            log.info("{}", recuritResponseDTO.getEndDate());
        }
        return collect;
    }

    public boolean saveRecurit(RecuritRequestDTO dto){
        return recruitMapper.save(dto.isEntity());
    }

    public Recruit detailRecurit(int rno){
        recruitMapper.viewUpCount(rno);
        return recruitMapper.findOne(rno);
    }

    public List<RecuritResponseDTO> getSortRecurit(){
        return recruitMapper.findSortRecruit().stream()
                .map(recruit -> new RecuritResponseDTO(recruit))
                .collect(Collectors.toList())
                ;
    }
}
