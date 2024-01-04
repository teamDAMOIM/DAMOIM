package com.project.damoim.comment.controller;

import com.project.damoim.comment.dto.request.CommentRequestDTO;
import com.project.damoim.comment.dto.request.UpLikeRequestDTO;
import com.project.damoim.comment.dto.response.CommentResponseDTO;
import com.project.damoim.comment.entity.Comment;
import com.project.damoim.comment.service.CommentService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.websocket.server.PathParam;
import java.util.List;

@Controller
@Slf4j
@RequestMapping("/comment")
@RequiredArgsConstructor
public class CommentController {
    private final CommentService service;

    @GetMapping("/{pno}/amount/{amount}")
    @ResponseBody
    public ResponseEntity<?> findComment(
            @PathVariable int pno,
            @PathVariable int amount
    ){

        CommentResponseDTO comment = service.findComment(pno, amount);

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
            @RequestBody UpLikeRequestDTO dto
    ) {

        service.upLikeCount(dto.getCommentNo());

        return ResponseEntity
                .ok()
                .body(
                        "오영석 바보"
                );
    }


}
