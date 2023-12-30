<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>web study</title>
    <%@ include file="../include/static-head.jsp" %>
</head>
<body>
<%@ include file="../include/header.jsp"%>
    <div id="wrap" class="form-container">
        <div class="title" id="title">${p.title}</div>
        <label for="writer">작성자: </label>
        <div type="text" id="writer">${p.mid}</div>
        <label for="date">작성일자: </label>
        <div type="text" id="date">${p.date}</div>

        <label for="content">내용</label>
        <div id="content" >${p.content}</div>
        <div class="buttons">
            <button class="list-btn" type="button"
<%--            onclick="window.location.href='/psot/post?pageNo=${p.pageNo}&amount=${p.amount}&type=${p.type}&keyword=${p.keyword}'" --%>
            onclick="window.location.href='/psot/post'">
                    목록
            </button>
        </div>
<%--    댓글    --%>
    </div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>