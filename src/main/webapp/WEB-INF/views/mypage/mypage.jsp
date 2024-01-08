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
        <div class="myPage-section">
            <div id="myProfile-info" style="background-image: url('/local${login.profile}')"></div>
            <div class="userInfo-box-container">
                <div id="nickName"> NicName: <span>${login.nickName}</span></div>
                <div id="user-info-correct-link"
                <%--style="display: flex; flex-direction: row; margin-top: 50px "--%>
                >
                    <a href="/myPage/changeInfo">
                        <div class="myInfo-fix-btn">
                            <div class="myInfo-fix-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                </svg>
                            </div>my정보 수정하기
                        </div>
                    </a>
                    <%--                       style=" background: #FFFFFF; width: 420px; height: 80px; border-radius:20px;display: flex;justify-content: center; "--%>
                    <div class="page-logout-btn">
                        <div class="page-logout-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-door-closed" viewBox="0 0 16 16">
                                <path d="M3 2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v13h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3zm1 13h8V2H4z"/>
                                <path d="M9 9a1 1 0 1 0 2 0 1 1 0 0 0-2 0"/>
                            </svg>
                        </div>
                        <a href="/members/sign-out"
    <%--                       style="background: #FFFFFF;width: 220px; height: 80px; border-radius:20px;display: flex;justify-content: center; "--%>
                        >로그아웃</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="main-box">
            <div class="myPage-Info-activities-item"
            <%--                    style="background: #B1B2FF; width: 300px; height: 300px; border-radius: 100%; display: flex; justify-content:center;"--%>
            >

                <a href="#" id="modalOpen1"><p>my 모집</p>${rcount} 건</a>
                <div id="modalContainer1" class="hidden">
                    <div id="modalContent1">
                        <p>my 모집</p>
                        <div class="mcon" style="max-height: calc(100vh - 200px); overflow-x: hidden; overflow-y: auto;">
                            <div class="container" style="width: 100%; padding: 0;">
                                <table class="table" id="post-table">
                                    <colgroup>
                                        <col style="width: 15%;" data-alias="number">
                                        <col style="width: 51%;" data-alias="title">
                                        <col style="width: 17%;" data-alias="date">
                                        <col style="width: 17%;" data-alias="date">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th class="text-center">번호</th>
                                        <th class="text-center">제목</th>
                                        <th class="text-center">작성일</th>
                                        <th class="text-center">마감일</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="r" items="${rList}">
                                        <tr id="table">
                                            <td class="num">${r.rno}</td>
                                            <td class="tit"><a href="/recruit/detail?rno=${r.rno}">${r.title}</a></td>
                                            <td class="dt">${r.startDate}</td>
                                            <td class="dt">${r.endDate}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <button id="modalClose1">닫기</button>
                    </div>
                </div>
            </div>
            <div class="myPage-Info-activities-item"
            <%--                    style="background: #B1B2FF; width: 300px; height: 300px; border-radius: 100%; display: flex; justify-content:center;"--%>
            >

                <a href="#" id="modalOpen2"><p>my 참여모임 list</p>${rmcount} 건</a>
                <div id="modalContainer2" class="hidden">
                    <div id="modalContent2">
                        <p>my 참여모임 list</p>
                        <div class="mcon">
                            <div class="container" style="width: 100%; padding: 0;">
                                <table class="table">
                                    <colgroup>
                                        <col style="width: 15%;" data-alias="number">
                                        <col style="width: 68%;" data-alias="title">
                                        <col style="width: 17%;" data-alias="date">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th class="text-center">번호</th>
                                        <th class="text-center">제목</th>
                                        <th class="text-center">모집일</th>
                                        <th class="text-center">모집마감일</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="rm" items="${rmList}">
                                        <tr id="table">
                                            <td class="num">${rm.recruitNo}</td>
                                            <td class="tit"><a href="/recruit/detail?rno=${rm.recruitNo}">${rm.recruitTitle}</a></td>
                                            <td class="sdt">${rm.recruitStartdate}</td>
                                            <td class="edt">${rm.recruitEnddate}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <button id="modalClose2">닫기</button>
                    </div>
                </div>
            </div>
            <div class="myPage-Info-activities-item"
            <%--                    style="background: #B1B2FF; width: 300px; height: 300px; border-radius: 100%; display: flex; justify-content:center;"--%>
            >
                <a href="#" id="modalOpen3"><p>작성한 게시판글 목록</p>${pcount} 건</a>
                <div id="modalContainer3" class="hidden">
                    <div id="modalContent3">
                        <p>작성한 게시판글 목록</p>
                        <div class="mcon" style="max-height: calc(100vh - 200px); overflow-x: hidden; overflow-y: auto;">
                            <div class="container" style="width: 100%; padding: 0;">
                                <table class="table">
                                    <colgroup>
                                        <col style="width: 15%;" data-alias="number">
                                        <col style="width: 68%;" data-alias="title">
                                        <col style="width: 17%;" data-alias="date">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th class="text-center">번호</th>
                                        <th class="text-center">제목</th>
                                        <th class="text-center">작성일</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="p" items="${pList}">
                                        <tr id="table">
                                            <td class="num">${p.pno}</td>
                                            <td class="tit"><a href="/recruit/detail?rno=${p.pno}">${p.title}</a></td>
                                            <td class="dt">${p.date}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <button id="modalClose3">닫기</button>
                    </div>
                </div>
            </div>
            <div class="myPage-Info-activities-item"
            <%--                    style="background: #B1B2FF; width: 300px; height: 300px; border-radius: 100%; display: flex; justify-content:center;"--%>
            >

                <a href="#" id="modalOpen4"><p>작성한 댓글 목록</p>${ccount} 건</a>
                <div id="modalContainer4" class="hidden">
                    <div id="modalContent4">
                        <p>작성한 댓글 목록</p>
                        <div class="mcon" style="max-height: calc(100vh - 200px); overflow-x: hidden; overflow-y: auto;">
                            <div class="container" style="width: 100%; padding: 0;">
                                <table class="table">
                                    <colgroup>
                                        <col style="width: 15%;" data-alias="number">
                                        <col style="width: 51%;" data-alias="title">
                                        <col style="width: 17%;" data-alias="date">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th class="text-center">번호</th>
                                        <th class="text-center">제목</th>
                                        <th class="text-center">작성일</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="c" items="${cList}">
                                        <tr id="table">
                                            <td class="num">${c.pno}</td>
                                            <td class="tit"><a href="/post/detail?pno=${c.pno}">${c.title}</a></td>
                                            <td class="dt">${c.date}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <button id="modalClose4">닫기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../include/footer.jsp"%>
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