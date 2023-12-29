<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <div class="inner-header">
        <h1 class="logo">
            <a href="/"><img src="/assets/img/Damoim.png" alt="로고이미지"></a>
        </h1>
        <c:if test="${login == null}">
            <a class="intro-text" href="/members/sign-in">
                로그인하러 가세요 !
            </a>
        </c:if>
        <c:if test="${login != null}">
            <h2 class="intro-text">
                ${login.nickName}
            </h2>
        </c:if>
        <a href="#" class="menu-open">
            <span class="lnr lnr-menu"></span>
        </a>
    </div>

    <nav class="gnb">
        <a href="#" class="close">
            <span class="lnr lnr-cross"></span>
        </a>
        <ul>
            <li><a href="/">Home</a></li>   <%-- 메인 --%>
<<<<<<< HEAD
            <li><a href="/post">Board</a></li> <%-- 자유게시판 --%>
=======
            <li><a href="/post/post">Board</a></li> <%-- 자유게시판 --%>
>>>>>>> 8656ed79cb77931867bf4d97cd9a4d4111331255
            <li><a href="/post/requestpost">Request Board</a></li> <%-- 신청게시판 --%>

            <c:if test="${empty login}">
                <li><a href="/members/sign-in">Sign In</a></li>
                <li><a href="/members/sign-up">Sign Up</a></li>
            </c:if>

            <c:if test="${not empty login}">
                <li><a href="/members/sign-out">Sign Out</a></li>
            </c:if>

        </ul>
    </nav>

</header>