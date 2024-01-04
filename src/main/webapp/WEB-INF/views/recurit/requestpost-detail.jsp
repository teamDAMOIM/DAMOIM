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

<div id="web-wrap" class="recruitment-container">
    <div class="background-logo">
        <div class="logo-img">
            <div class="title" id="title">${r.title}</div>

            <div class="top-writer">

                <img src="/assets/img/personIcon.png" alt="person-icon">
                <div type="text" id="writer">작성자</div>
            </div>

            <!-- <label for="writer" class="top-writer"></label> -->

        </div>
    </div>


    <label for="sdate">작성 날짜</label>
    <div type="text" id="sdate">${r.startDate}</div>

    <label for="edate">모집마감일</label>
    <div type="text" id="edate">${r.endDate}</div>

    <label for="content">내용</label>
    <div id="content">${r.content}</div>
    <div class="buttons">
        <button class="check" type="button" name="check">모임신청</button>
        <button class="list-btn" type="button" onclick="window.location.href='/recruit'">목록</button>
    </div>
</div>


<%@ include file="../include/footer.jsp"%>
</body>
</html>