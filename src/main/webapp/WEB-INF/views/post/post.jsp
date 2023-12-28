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
    <div class="newpost">
        <div class="post-area">
            <a href="#">글쓰기</a>
        </div>
        <form action="/post/post" class="postlist">
            <div class="container">
                <table class="table" id="post-table">
                    <colgroup>
                        <col class="size01" data-alias="number">
                        <col class="size02" data-alias="title">
                        <col class="size03" data-alias="name">
                        <col class="size04" data-alias="date">
                        <col class="size05" data-alias="viewcount">
                    </colgroup>
                    <thead>
                    <tr>
                        <th class="text-center">번호</th>
                        <th class="text-center">제목</th>
                        <th class="text-center">이름</th>
                        <th class="text-center">작성일</th>
                        <th class="text-center">조회수</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="p" items="${plist}">
                        <tr>
                            <td class="num">${p.tnum}</td>
                            <td class="tit">${p.title}</td>
                            <td class="nm">${p.name}</td>
                            <td class="dt">${p.date}</td>
                            <td class="vc">${p.viewcount}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </form>
        <div class="board-bottom">
            
        </div>
    </div>

<%@ include file="../include/footer.jsp"%>
</body>
</html>