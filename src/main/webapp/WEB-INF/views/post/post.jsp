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
        <div class="main-title-wrap">
            <h1 class="main-title">자유게시판</h1>
            <div class="button-wrap">
<%--            <c:if test="${login != null}">--%>
                <button class="add-btn btn">글 쓰기</button>
<%--            </c:if>--%>
            </div>
        </div>
        <form action="/post/post" class="postlist">
            <div class="container">
                <table class="table" id="post-table">
                    <colgroup>
                        <col style="width: 9%;" class="size01" data-alias="number">
                        <col style="width: 65%;" class="size02" data-alias="title">
                        <col style="width: 7%;" class="size03" data-alias="name">
                        <col style="width: 12%;" class="size04" data-alias="date">
                        <col style="width: 7%;" class="size05" data-alias="viewcount">
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
                            <td class="num">${p.num}</td>
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