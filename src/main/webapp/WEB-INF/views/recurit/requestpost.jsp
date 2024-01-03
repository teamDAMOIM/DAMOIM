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
            <a class="rp-one" href="/recruit/detail?rno=${r.rno}">
<%--            <div class="rp-one" data-rno="${r.rno}">--%>
                <div class="rp-top">
                    <div class="category">${r.category}</div>
                    <div class="title">${r.title}</div>
                    <div class="user-count">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
                            <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
                            <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
                        </svg>
                        ${r.count}
                    </div>
                </div>
                <div class="rp-center">
                    <div class="content">${r.content}</div>
                </div>
                <div class="rp-bottom">
                    <div class="maxCount">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
                            <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
                        </svg>
                        신청 인원/${r.maxCount}
                    </div> <!-- 모집인원 -->
                    <div class="endDate">${r.endDate}</div> <!-- 모집 종료일 -->
                </div>
<%--            </div>--%>
            </a>
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
    $recruitmentDetail.onclick = e =>{
        const rno = e.target.closest('div.rp-one').dataset.rno;
        console.log(rno);
        // window.location.href= "/recruit/detail?rno=" + rno
        window.location.href = '/recruit/detail';
    }
</script>

</body>
</html>