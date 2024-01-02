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

<div class="requestpost">
    <div class="main-title-wrap">
        <h1 class="main-title">신청게시판</h1>
        <div class="button-wrap">

            <%@ include file="../home/category.jsp"%>

            <%--            <c:if test="${login != null}">--%>
            <!-- 글 쓰기 버튼 -->
            <button class="add-btn btn">글 쓰기</button>
            <%--            </c:if>--%>
        </div>
    </div>

    <div class="container">
        <c:forEach var="r" items="${rList}">
            <div class="rp-one">
                <div class="rp-top">
                    <div class="category">${r.category}</div>
                    <div class="title">${r.title}</div>
                    <div class="user-count"><img src="/assets/img/hit-count.png" alt="hit-count">조회수</div>
                </div>
                <div class="rp-center">
                    <div class="content">${r.content}</div>
                </div>
                <div class="rp-bottom">
                    <div class="maxCount"><img src="/assets/img/red-check.png" alt="red-check"> ${r.maxCount}</div> <!-- 모집인원 -->
                    <div class="endDate">${r.endDate}</div> <!-- 모집 종료일 -->
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<%@ include file="../include/footer.jsp"%>

<script>
    const $writeBtn = document.querySelector('.add-btn');
    $writeBtn.onclick = e => {
        const targetPageURL = '/recruit/write';
        window.location.href = targetPageURL;
    }

    const $recruitmentDetail = document.querySelector('.rp-one');
    $recruitmentDetail.onclick = e => {
        window.location.href = '/recruit/detail/모집 게시글 번호';
    }
</script>

</body>
</html>