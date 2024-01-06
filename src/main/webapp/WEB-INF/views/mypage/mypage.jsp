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
                    <a href="/myPage/changeInfo" style="background: red; ">my정보 수정하기</a>
                    <a href="#" style="background: blue;">로그아웃</a>
                </div>
            </div>
        </div>
        <div id="main-box">
            <div>
                <p>my 모집</p>
                <a href="#" id="modalOpen1">1 건</a>
                <div id="modalContainer1" class="hidden">
                    <div id="modalContent1">
                        <p>my 모집</p>
                        <div class="mcon">모야호</div>
                        <button id="modalClose1">닫기</button>
                    </div>
                </div>
            </div>
            <div>
                <p>my 참여모임 list</p>
                <a href="#" id="modalOpen2">1 건</a>
                <div id="modalContainer2" class="hidden">
                    <div id="modalContent2">
                        <p>my 참여모임 list</p>
                        <div class="mcon">모야호</div>
                        <button id="modalClose2">닫기</button>
                    </div>
                </div>
            </div>
            <div>
                <p>작성한 게시판글 목록</p>
                <a href="#" id="modalOpen3">1 건</a>
                <div id="modalContainer3" class="hidden">
                    <div id="modalContent3">
                        <p>작성한 게시판글 목록</p>
                        <div class="mcon">모야호</div>
                        <button id="modalClose3">닫기</button>
                    </div>
                </div>
            </div>
            <div>
                <p>작성한 댓글 목록</p>
                <a href="#" id="modalOpen4">1 건</a>
                <div id="modalContainer4" class="hidden">
                    <div id="modalContent4">
                        <p>작성한 댓글 목록</p>
                        <div class="mcon">모야호</div>
                        <button id="modalClose4">닫기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>

    <%--   모달 클릭 a태그  --%>
    const modalOpen1 = document.getElementById('modalOpen1');
    const modalOpen2 = document.getElementById('modalOpen2');
    const modalOpen3 = document.getElementById('modalOpen3');
    const modalOpen4 = document.getElementById('modalOpen4');

    //  모달창 안에 버튼
    const modalClose1 = document.getElementById('modalClose1');
    const modalClose2 = document.getElementById('modalClose2');
    const modalClose3 = document.getElementById('modalClose3');
    const modalClose4 = document.getElementById('modalClose4');

    const modal1 = document.getElementById('modalContainer1');
    const modal2 = document.getElementById('modalContainer2');
    const modal3 = document.getElementById('modalContainer3');
    const modal4 = document.getElementById('modalContainer4');

    modalOpen1.addEventListener('click', () => {
        modal1.classList.remove('hidden');
    });
    modalOpen2.addEventListener('click', () => {
        modal2.classList.remove('hidden');
    });
    modalOpen3.addEventListener('click', () => {
        modal3.classList.remove('hidden');
    });
    modalOpen4.addEventListener('click', () => {
        modal4.classList.remove('hidden');
    });

    modalClose1.addEventListener('click', () => {
        modal1.classList.add('hidden');
    });

    modalClose2.addEventListener('click', () => {
        modal2.classList.add('hidden');
    });

    modalClose3.addEventListener('click', () => {
        modal3.classList.add('hidden');
    });

    modalClose4.addEventListener('click', () => {
        modal4.classList.add('hidden');
    });

    // 외부 클릭 이벤트
    window.addEventListener('click', (event) => {
        if (event.target === modal1 || event.target === modal2 || event.target === modal3 || event.target === modal4) {
            event.target.classList.add('hidden');
        }
    });
</script>
</html>