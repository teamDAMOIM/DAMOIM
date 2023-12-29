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
    <div class="title" id="title"></div>
    <label for="writer">작성자</label>
    <div type="text" id="writer"></div>
    <label for="sdate">작성일자</label>
    <div type="text" id="sdate"></div>
    <label for="edate">모집마감일</label>
    <div type="text" id="edate"></div>

    <label for="content">내용</label>
    <div id="content">${content}</div>
    <div class="buttons">
        <button class="check" type="button" name="check">모임신청</button>
        <button class="list-btn" type="button"
        <%--            onclick="window.location.href='/psot/post?pageNo=${p.pageNo}&amount=${p.amount}&type=${p.type}&keyword=${p.keyword}'" --%>
                onclick="window.location.href='/psot/post'">
            목록
        </button>
    </div>
</div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>