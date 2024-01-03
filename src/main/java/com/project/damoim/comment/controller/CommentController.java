package com.project.damoim.comment.controller;

import com.project.damoim.comment.entity.Comment;
import com.project.damoim.comment.service.CommentService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

        List<Comment> comment = service.findComment(pno, amount);

        return ResponseEntity
                .ok()
                .body(comment)
                ;
    }

}
