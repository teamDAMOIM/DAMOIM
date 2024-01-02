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
            <!-- drop down menu -->
            <select class="form-select" name="type" id="search-type" value="category">
                <option value="exercise">운동</option>
                <option value="wine">술</option>
                <option value="Hobby">취미</option>
                <option value="Study">스터디</option>
            </select>

            <%--            <c:if test="${login != null}">--%>
            <!-- 글 쓰기 버튼 -->
            <button class="add-btn btn">글 쓰기</button>
            <%--            </c:if>--%>
        </div>
    </div>
    <form action="/post/reqestpost" class="requestlist">
        <div class="container">
            <table class="table" id="request-table">
                <colgroup>
                    <col style="width: 9%;" class="size01" data-alias="number">
                    <col style="width: 65%;" class="size02" data-alias="title">
                    <col style="width: 7%;" class="size03" data-alias="name">
                    <col style="width: 12%;" class="size04" data-alias="date">
                    <col style="width: 7%;" class="size05" data-alias="requestcount">
                </colgroup>
                <thead>
                <tr>
                    <th class="text-center">번호</th>
                    <th class="text-center">제목</th>
                    <th class="text-center">이름</th>
                    <th class="text-center">작성일</th>
                    <th class="text-center">신청수</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="r" items="${rList}">
                    <tr>
                        <td class="num">${r.title}</td>
                        <td class="title">${r.content}</td>
                        <td class="nm">${r.category}</td>
                        <td class="dt">${r.endDate}</td>
                        <td class="rc">${r.addrass}</td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </form>
    <%--    <div class="board-bottom">--%>
    <%--        &lt;%&ndash;      페이지 버튼 영역      &ndash;%&gt;--%>
    <%--    </div>--%>
</div>

<%@ include file="../include/footer.jsp"%>

<script>
    const $writeBtn = document.querySelector('.add-btn');
    $writeBtn.onclick = e => {
        const targetPageURL = '/post/write';
        window.location.href = targetPageURL;
    }
</script>

</body>
</html>