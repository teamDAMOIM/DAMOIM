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
<%@ include file="../include/header.jsp" %>

<div class="recruitment-board">
    <div class="main-title-wrap">
        <h1 class="main-title">신청게시판</h1>
        <div class="button-wrap">
            <%@ include file="../home/category.jsp" %>
            <label class="search">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-search"
                     viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                </svg>
                <input type="text" name="keyword" id="inputKeyword">
            </label>
            <%--            <c:if test="${login != null}">--%>
            <button class="add-btn btn">글 쓰기</button>
            <%--            </c:if>--%>
        </div>
    </div>

    <div class="container">
            <a class="rp-one" href="/recruit/detail?rno=${r.rno}">
                    <%--            <div class="rp-one" onclick="window.location.href='/recruit/detail?rno=${r.rno}'">--%>
                <div class="category">
                    <c:if test="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                             class="bi bi-heart-pulse" viewBox="0 0 16 16">
                            <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053.918 3.995.78 5.323 1.508 7H.43c-2.128-5.697 4.165-8.83 7.394-5.857q.09.083.176.171a3 3 0 0 1 .176-.17c3.23-2.974 9.522.159 7.394 5.856h-1.078c.728-1.677.59-3.005.108-3.947C13.486.878 10.4.28 8.717 2.01zM2.212 10h1.315C4.593 11.183 6.05 12.458 8 13.795c1.949-1.337 3.407-2.612 4.473-3.795h1.315c-1.265 1.566-3.14 3.25-5.788 5-2.648-1.75-4.523-3.434-5.788-5"/>
                            <path d="M10.464 3.314a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.5a.5.5 0 0 0 0 1H4a.5.5 0 0 0 .416-.223l1.473-2.209 1.647 4.118a.5.5 0 0 0 .945-.049l1.598-5.593 1.457 3.642A.5.5 0 0 0 12 9h3.5a.5.5 0 0 0 0-1h-3.162z"/>
                        </svg>
                    </c:if>
                </div>
                <div class="rp-content">
                    <div class="title">${r.title}</div>
                    <div class="user-count">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                             class="bi bi-eye-fill" viewBox="0 0 16 16">
                            <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
                            <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
                        </svg>
                            ${r.count}
                    </div>
                    <div class="endDate">${r.endDate}</div> <!-- 모집 종료일 -->
                </div>
                    <%--<div class="rp-center">
                        <div class="content">${r.content}</div>
                    </div>--%>
                <div class="maxCount">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                         class="bi bi-check" viewBox="0 0 16 16">
                        <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
                    </svg>
                    0/${r.maxCount}
                </div> <!-- 모집인원 -->
                <div class="rp-bottom">
                        <%--                    <div class="endDate">${r.endDate}</div> <!-- 모집 종료일 -->--%>
                </div>
            </a>

    </div>
</div>

<%@ include file="../include/footer.jsp" %>

<script>
    const $writeBtn = document.querySelector('.add-btn');
    $writeBtn.onclick = e => {
        const targetPageURL = '/recruit/write';
        window.location.href = targetPageURL;
    }

    let $inputKeyword = document.getElementById('inputKeyword');

    function renderView(response){
        let tag = '';

        for (let r of response){
            if(r.title === $inputKeyword.value){
                tag += `


                `;
            }
        }
    }



    $inputKeyword.onkeydown = e => {

        fetch("/recruit/type/FREEDOM/keyword/" + $inputKeyword.value)
            .then(res =>
                res.json()
            )
            .then(response => {
                renderView(response);
            })
    }

</script>

</body>
</html>