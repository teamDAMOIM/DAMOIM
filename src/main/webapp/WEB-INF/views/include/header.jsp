<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <div class="inner-header">
        <h1 class="logo">
            <a href="/xxx"><img src="/assets/img/Damoim.png" alt="로고이미지"></a>
        </h1>
        <h2 class="intro-text">
            ${m.nickName}
        </h2>
        <a href="#" class="menu-open">
            <span class="lnr lnr-menu"></span>
        </a>
    </div>

    <nav class="gnb">
        <a href="#" class="close">
            <span class="lnr lnr-cross"></span>
        </a>
        <ul>
            <li><a href="/xxx">Home</a></li>   <%-- 메인 --%>
            <li><a href="/post/post">Board</a></li> <%-- 자유게시판 --%>
            <li><a href="/post/requestpost">Request Board</a></li> <%-- 신청게시판 --%>

            <c:if test="${empty login}">
                <li><a href="/members/sign-in">Sign In</a></li>
                <li><a href="/members/sign-up">Sign Up</a></li>
            </c:if>

            <c:if test="${not empty login}">
                <li><a href="#">My Page</a></li>
                <li><a href="/members/sign-out">Sign Out</a></li>
            </c:if>

        </ul>
    </nav>

</header>