<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Web study</title>
    <%@ include file="../include/static-head.jsp" %>
    <link rel="stylesheet" href="/assets/css/mypage.css">
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div id="box">
    <div id="background-box">
        <div style="display: flex; flex-direction: row; justify-content: center">
            <img id="profile" src="/local${login.profile}" alt="프사">
            <div style="display: flex; flex-direction: column">
                <h1 id="nickName">${login.nickName}님
                    반갑습니다!</h1>
                <div id="header-link" style="display: flex; flex-direction: row; margin-top: 50px ">
                    <a href="/changeInfo" style="background: red; ">my정보 수정하기</a>
                    <a href="#" style="background: blue;">로그아웃</a>
                </div>
            </div>
        </div>
        <div id="main-box">
            <div>
                <p>my 모집</p>
                <a href="">1 건</a>
            </div>
            <div>
                <p>my 활동</p>
                <a href="">1 건</a>
            </div>
            <div>
                <p>my 관심모임</p>
                <a href="">1 건</a>
            </div>
            <div>
                <p>my 참여모임 list</p>
                <a href="">1 건</a>
            </div>
            <div>
                <p>작성한 게시판글 목록</p>
                <a href="">1 건</a>
            </div>
            <div>
                <p>작성한 댓글 목록</p>
                <a href="">1 건</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>