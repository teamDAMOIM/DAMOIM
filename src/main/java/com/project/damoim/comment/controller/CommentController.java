package com.project.damoim.comment.controller;

import com.project.damoim.comment.dto.request.CommentRequestDTO;
import com.project.damoim.comment.dto.request.UpLikeRequestDTO;
import com.project.damoim.comment.dto.response.CommentLikeResponseDTO;
import com.project.damoim.comment.dto.response.CommentResponseDTO;
import com.project.damoim.comment.entity.Comment;
import com.project.damoim.comment.service.CommentService;
import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.websocket.server.PathParam;
import java.util.List;

@Controller
@Slf4j
@RequestMapping("/comment")
@RequiredArgsConstructor
public class CommentController {
    private final CommentService service;

    @GetMapping("/{pno}/amount/{amount}/sort/{sort}")
    @ResponseBody
    public ResponseEntity<?> findComment(
            @PathVariable int pno,
            @PathVariable int amount,
            @PathVariable String sort
    ){

        CommentResponseDTO comment = service.findComment(pno, amount, sort);

        return ResponseEntity
                .ok()
                .body(comment)
                ;
    }

    @PostMapping
    @ResponseBody
    public ResponseEntity<?> saveComment(
            @Validated
            @RequestBody CommentRequestDTO dto
            , BindingResult result
    ) {

        if (result.hasErrors()) {
            return ResponseEntity
                    .badRequest()
                    .body(result.toString());
        }

        boolean flag = service.saveComment(dto);

        return ResponseEntity
                .ok()
                .body(flag);
    }

    @PatchMapping
    @ResponseBody
    public ResponseEntity<?> upLikeCount(
            @RequestBody UpLikeRequestDTO dto,
            HttpSession session
    ) {

        boolean flag = service.checkLike(dto.getCommentNo(), session);

        Comment comment = service.getComment(dto.getCommentNo());

        CommentLikeResponseDTO responseDTO = CommentLikeResponseDTO.builder()
                .likeCount(comment.getLikeCount())
                .flag(flag)
                .commentNo(comment.getCommentNo())
                .build();

        return ResponseEntity
                .ok()
                .body(
                        responseDTO
                );
    }


}
