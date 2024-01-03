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
<div class="wrap">
    <div class="form-container">
        <div class="title" id="title">${p.title}</div>

        <div class="labelbox">
            <div class="column">
                <label for="writer">작성자: </label>
                <div type="text" id="writer">${p.mid}</div>
            </div>
            <div class="column">
                <label for="date">작성일자: </label>
                <div type="text" id="date">${p.date}</div>
            </div>
        </div>

        <div class="content" id="content" >${p.content}</div>
        <div class="buttons">
            <button class="list-btn" type="button"
            onclick="window.location.href='/post?type=${ps.type}&keyword=${ps.keyword}'"
<%--            onclick="window.location.href='/post'"--%>
            >
                    목록
            </button>
        </div>
<%--    댓글    --%>
        <div class="ss">
<%--
            댓글 창 입니다.
--%>
        </div>


    </div>
</div>
<%@ include file="../include/footer.jsp"%>

<script>
    function fetchGetComment(){
        fetch("/comment/${p.pno}")
            .then(request => request.json())
            .then(response=>{
                console.log(response);
            })
    }


    (()=>{
        fetchGetComment();
    })();
</script>
</body>
</html>