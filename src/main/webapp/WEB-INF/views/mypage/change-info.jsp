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
            <img src="/local${login.profile}" alt="프사">
            <div style="display: flex; flex-direction: column">
                <h1 id="nickName">${login.nickName}님
                    반갑습니다!</h1>
                <div id="header-link" style="display: flex; flex-direction: row; margin-top: 50px ">
                    <a href="/myPage" style="background: red; ">my정보 보러가기</a>
                    <a href="#" style="background: blue;">로그아웃</a>
                </div>
            </div>
        </div>
        <div class="table-title">
            <h3>my정보 수정</h3>
        </div>
        <table class="table-fill">
            <tbody class="table-hover">
            <tr>
                <td class="text-left">ID</td>
                <td class="text-left"><input type="text" id="userId" value="ㅁㄴㅇㅁㄴㅇㅁㄴㅇ" disabled></td>
                <td><button class="not">변경불가</button></td>
            </tr>
            <tr>
                <td class="text-left">PW</td>
                <td class="text-left"><input type="text" id="userPw" value="*********" disabled></td>
                <td><button class="not">변경불가</button></td>
            </tr>
            <tr>
                <td class="text-left">NAME</td>
                <td class="text-left"><input type="text" id="userName" value="오욘소쿠" disabled></td>
                <td><button class="not">변경불가</button></td>
            </tr>
            <tr>
                <td class="text-left">닉네임</td>
                <td class="text-left"><input type="text" id="userNickname" value="나는야닉네임" disabled></td>
                <td><button class="change" id="nn-btn" onclick="toggleInput1()">변경하기</button></td>
            </tr>
            <tr>
                <td class="text-left">PHONE</td>
                <td class="text-left"><input type="text" id="userPn" value="010-8700-5640" disabled></td>
                <td><button class="change" id="pn-btn"  onclick="toggleInput2()">변경하기</button></td>
            </tr>
            <tr>
                <td class="text-left">ADDRESS</td>
                <td class="text-left"><input type="text" id="userAdd" value="대전" disabled></td>
                <td><button class="change" id="add-btn"  onclick="toggleInput3()">변경하기</button></td>
            </tr>
            </tbody>
        </table>
        <div id="savediv">
            <button id="save">변경사항 저장하기</button>
        </div>
    </div>
</div>
</body>
<script>
    function toggleInput1() {
        var inputField = document.getElementById('userNickname');
        var button = document.getElementById('nn-btn');

        if (inputField.disabled) {
            inputField.disabled = false;
            button.innerText = '저장';
        } else {
            inputField.disabled = true;
            button.innerText = '변경하기';
        }
    }
    function toggleInput2() {
        var inputField = document.getElementById('userPn');
        var button = document.getElementById('pn-btn');

        if (inputField.disabled) {
            inputField.disabled = false;
            button.innerText = '저장';
        } else {
            inputField.disabled = true;
            button.innerText = '변경하기';
        }
    }
    function toggleInput3() {
        var inputField = document.getElementById('userAdd');
        var button = document.getElementById('add-btn');

        if (inputField.disabled) {
            inputField.disabled = false;
            button.innerText = '저장';
        } else {
            inputField.disabled = true;
            button.innerText = '변경하기';
        }
    }
</script>
</html>