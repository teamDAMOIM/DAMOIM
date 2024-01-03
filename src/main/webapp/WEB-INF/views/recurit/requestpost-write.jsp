<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <%@ include file="../include/static-head.jsp" %>
</head>
<body>
<%@ include file="../include/header.jsp"%>
<section class="write-section">
    <div class="form-container">
        <form action="/recruit/write" method="post">
            <label for="title" class="pd">제목</label>
            <select class="select" name="type" id="search-type">
                <option value="title">제목</option>
                <option value="content">내용</option>
                <option value="writer">작성자</option>
                <option value="tc">제목+내용</option>
            </select>
            <input type="text" id="title" class="pd put" name="title" required>
            <label for="content" class="pd">내용</label>
            <textarea id="content" class="pd put" name="content" maxlength="800" required style="resize: none;" rows="30" cols="80"></textarea>
            <div class="buttons pd">
                <button class="list-btn" type="button" onclick="window.location.href='/post'">목록</button>
                <button type="submit">글쓰기</button>
            </div>
        </form>
    </div>
</section>
</body>
</html>