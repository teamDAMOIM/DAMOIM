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
<div class="newpost">
    <div class="main-title-wrap">
        <h1 class="main-title">자유게시판</h1>
        <div class="button-wrap">
            <%--            <c:if test="${login != null}">--%>
            <a class="add-btn btn" href="/post/write">글 쓰기</a>
            <%--            </c:if>--%>
        </div>
    </div>
    <%--        <form action="/post/post" class="postlist">--%>
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
            <c:forEach var="p" items="${pList}">

                <tr id="table">

                    <td class="num">${p.pno}</td>
                    <td class="tit"><a href="/post/detail?pno=${p.pno}">${p.title}</a></td>
                    <td class="nm">${p.name}</td>
                    <td class="dt">${p.date}</td>
                    <td class="vc">${p.view}</td>

                </tr>

            </c:forEach>
            </tbody>
        </table>
    </div>
    <%--        <div class="board-bottom">--%>
    <%--            &lt;%&ndash;      페이지 버튼 영역      &ndash;%&gt;--%>
    <%--                <nav aria-label="Page navigation example">--%>
    <%--                    <ul class="pagination pagination-lg pagination-custom bbul">--%>
    <%--                        <c:if test="${maker.page.pageNo != null}">--%>
    <%--                            <c:if test="${maker.page.pageNo != 1}">--%>
    <%--                                <li class="page-item"><a class="page-link" href="/board/list?pageNo=1&type=${s.type}&keyword=${s.keyword}">--%>
    <%--                                    &lt;&lt;--%>
    <%--                                </a>--%>
    <%--                                </li>--%>
    <%--                            </c:if>--%>

    <%--                            <c:if test="${maker.prev}">--%>
    <%--                                <li class="page-item"><a class="page-link" href="/post/post?pageNo=${maker.begin - 1}&type=${s.type}&keyword=${s.keyword}">prev</a>--%>
    <%--                                </li>--%>
    <%--                            </c:if>--%>

    <%--                            <c:forEach var="i" begin="${maker.begin}" end="${maker.end}" step="1">--%>
    <%--                                <li data-page-num="${i}" class="page-item">--%>
    <%--                                    <a class="page-link" href="/post/post?pageNo=${i}&type=${s.type}&keyword=${s.keyword}">--%>
    <%--                                            ${i}--%>
    <%--                                    </a>--%>
    <%--                                </li>--%>
    <%--                            </c:forEach>--%>


    <%--                            <c:if test="${maker.next}">--%>
    <%--                                <li class="page-item"><a class="page-link" href="/post/post?pageNo=${maker.end + 1}&type=${s.type}&keyword=${s.keyword}">next</a></li>--%>
    <%--                            </c:if>--%>

    <%--                            <c:if test="${maker.page.pageNo != maker.finalPage}">--%>
    <%--                                <li class="page-item"><a class="page-link" href="/post/post?pageNo=${maker.finalPage}&type=${s.type}&keyword=${s.keyword}">--%>
    <%--                                    &gt;&gt;--%>
    <%--                                </a></li>--%>
    <%--                            </c:if>--%>
    <%--                        </c:if>--%>
    <%--                </ul>--%>
    <%--            </nav>--%>
    <%--        </div>--%>
</div>

<%@ include file="../include/footer.jsp" %>
<script>

    function onClick(id){
        window.location.href = "/post/detail?pno=${id}"
            .
    }
</script>
</body>
</html>