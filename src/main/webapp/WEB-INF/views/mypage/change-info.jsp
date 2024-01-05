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
                    <a href="/myPage" style="background: red; ">my정보 보러가기</a>
                    <a href="#" style="background: blue;">로그아웃</a>
                </div>
            </div>
        </div>
        <div class="table-title">
            <h3>my정보 수정</h3>
        </div>
<%--        <form action="/myPage/change-info" class="change-form" method="post" enctype="multipart/form-data">--%>
            <table class="table-fill">
                <tbody class="table-hover">
                <tr>
                    <td class="text-left">ID</td>
                    <td class="text-left"><input type="text" id="userId" value="${m.memberId}" disabled></td>
                    <td>
                        <button class="not">변경불가</button>
                    </td>
                </tr>
                <tr>
                    <td class="text-left">NAME</td>
                    <td class="text-left"><input type="text" id="userName" value="${m.memberName}" disabled></td>
                    <td>
                        <button class="not">변경불가</button>
                    </td>
                </tr>
                <tr>
                    <td class="text-left">닉네임</td>
                    <td class="text-left">
                        <input type="text" id="userNickname" value="${m.memberNickname}" disabled><label id="nickchk"></label></td>
                    <td>
                        <button class="change" id="nn-btn" onclick="toggleInput1()">변경하기</button>
                    </td>
                </tr>
                <tr>
                    <td class="text-left">PHONE</td>
                    <td class="text-left"><input type="text" id="userPhone" value="${m.memberPhone}" disabled></td>
                    <td>
                        <button class="not">변경불가</button>
                    </td>
                </tr>
                <tr>
                    <td class="text-left">ADDRESS</td>
                    <td class="text-left"><input type="text" id="userAdd" value="${m.memberAddress}" disabled></td>
                    <td>
                        <button class="change" id="add-btn" onclick="toggleInput2()">변경하기</button>
                    </td>
                </tr>
                </tbody>
            </table>
            <div id="savediv">
                <button id="save" onclick="onSave()">변경사항 저장하기</button>
            </div>
<%--        </form>--%>
    </div>
</div>
</body>
<script>
    let checkList = [false, false]
    const checkResultList = [false, false];

    let changeList = [false, false]
    const $button1 = document.getElementById('nn-btn');
    const $button2 = document.getElementById('add-btn');

    let type = '';

    $button1.onclick = e => {
        var inputField = document.getElementById('userNickname');
        if (inputField.disabled) {
            inputField.disabled = false;
            $button1.innerText = '저장';
            type = 'name';
            checkList[0] = true;
            console.log(checkList);
        } else {
            inputField.disabled = true;
            $button1.innerText = '변경하기';
            checkList[0] = false;
            console.log(checkList);
        }
    }

    const $inputNickname = document.getElementById('userNickname');
    $inputNickname.onchange = e => {
        console.log("ㅁㄴㅇ")
        if ($inputNickname.value.trim() === '') {
            document.getElementById('nickchk').innerHTML =
                '<b style="color: red">[닉네임은 필수 값입니다.]</b>'
            checkResultList[0] = false;
            $button1.disabled = true;

        } else if (!nickNamePattern.test($inputNickname.value)) {
            document.getElementById('nickchk').innerHTML =
                '<b style="color: red">[한국어로 입력해주세요!!]</b>'
            checkResultList[0] = false;
            $button1.disabled = true;

        } else {
            fetch("/members/check?type=memberNickname&keyword=" + $inputNickname.value)
                .then(res => res.json())
                .then(rep => {
                    if(rep){ // 중복이 되면
                        document.getElementById('nickchk').innerHTML =
                            '<b style="color: red">[중복 값입니다.]</b>'
                        checkResultList[0] = false;
                        $button1.disabled = true;
                    }else{
                        document.getElementById('nickchk').innerHTML =
                            '<b style="color: skyblue">[사용 가능띠!!!]</b>'
                        checkResultList[0] = true;
                        $button1.disabled = false;
                    }
                });
        }
    };

    $button2.onclick = e => {
        var inputField = document.getElementById('userAdd');

        if (inputField.disabled) {
            inputField.disabled = false;
            $button2.innerText = '저장';
            type = 'address';
            checkList[2] = true;
            console.log(checkList);
        } else {
            inputField.disabled = true;
            $button2.innerText = '변경하기';
            checkList[2] = false;
            console.log(checkList);
        }
    }
    //
    const nickNamePattern = /^[가-힣]+$/;

    const $nickNameKeyDown = document.getElementById('userNickname');
    $nickNameKeyDown.onkeyup = e => {
        if ($nickNameKeyDown.value.trim() === '') {
            $nickNameKeyDown.style.borderColor = 'red';
        }
    }

    function onSave() {
        console.log(checkList)
        if (!checkList.includes(true)) {
            alert("회원님의 정보 수정이 완료되었습니다!")
            window.location.href = "/members/update?type="
                + type + "&name=바보&memberId=" + "${login.id}";
        } else {
            alert("회원님의 정보 수정이 실패했습니다!")
        }
    }

</script>
</html>