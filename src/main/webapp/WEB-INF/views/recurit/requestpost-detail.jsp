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

<%--
    현재 사용 가능한 데이터
    private int rno; - 게시글 번호
    private String title; - 게시글 제목
    private String content; - 게시글 내용
    private String category; - 게시글 카테고리
    private LocalDateTime startDate; - 모임 모집 날짜
    private LocalDateTime endDate; - 모임 모집 종료 날짜
    private String address; - 모임 장소
    private int count; - 조회수
    private int max; - 최대 모임 모집 인원

    추가
    writer - 작성자
    checkCount - 현재 신청 인원수
--%>

<div id="web-wrap" class="recruitment-detail-container">
    <div class="blank-space-fill"></div>
    <div class="section-recruitment-board">
        <div class="top-detail-header">
<%--            <div class="logo-img"></div>--%>
            <div class="detail-icon"></div>
            <div class="board-category-sub" style="display: none">${r.category}</div>

            <div class="board-write-info">
                <div class="board-title-topic" id="title">${r.title}</div>
                <div class="detail-startDate-item">
                    <div id="set-date" class="board-write-Date-info">${r.startDate}</div>
                </div>
            </div>
        </div>

        <div class="center-detail-items">
            <div class="detail-content-item">
<%--                <label for="content">내용</label>--%>
                <div class="detail-content-board">${r.content}</div>
            </div>
        </div>

        <div class="detail-recruitment-info">
            <div class="detail-endDate-item">
                <div class="deadline-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-calendar-check-fill" viewBox="0 0 16 16">
                        <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2m-5.146-5.146-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708.708"/>
                    </svg>
                </div>
                <label for="end-date">모집 마감일</label>
                <div id="end-date" class="recruitment-Deadline-info">${r.endDate}</div>
            </div>

            <div class="detail-address-item">
                <div class="detail-area-address-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                        <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                    </svg>
                </div>
                <label for="address-area">모임 장소</label>
                <div id="address-area" class="address-area-info-recruitment">${r.address}</div>
            </div>
        </div>
    </div>


    <%-- 버튼 contain --%>
    <div class="detail-buttons-item">
        <%-- 신청 버튼 --%>
        <a class="check-person-number" type="button" onclick="window.location.href='/recruit/addRecruit?rno=${r.rno}'">
            <label class="count-info">
                <label class="count-check-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0"/>
                        <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
                    </svg>
                </label>
                <label class="checkCount">${r.count}</label>
                <span>/</span>
                <label class="recruitment-max-count">${r.max}</label>
            </label>
            <c:if test="${r.check==0}">
                <span>신청하기</span>
            </c:if>
            <c:if test="${r.check==1}">
                <span>취소하기</span>
            </c:if>
        </a>
        <%-- 목록 보기 --%>
        <button class="list-view" type="button" onclick="window.location.href='/recruit'">
            <label class="list-view-icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-list-ul" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5m-3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2m0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2m0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2"/>
                </svg>
            </label>
            <span>목록보기</span>
        </button>
    </div>
</div>
<%@ include file="../include/footer.jsp"%>

<script>
    // 카테고리에 따른 아이콘
    let $detailCategory = document.querySelector('.board-category-sub');
    let $detailIcon = document.querySelector('.detail-icon');

    if($detailCategory.textContent==='FREEDOM'){
        $detailIcon.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" className="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>`
    }
    if($detailCategory.textContent==='EXERCISE'){
        $detailIcon.innerHTML =`<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" className="bi bi-heart-pulse" viewBox="0 0 16 16">
                    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053.918 3.995.78 5.323 1.508 7H.43c-2.128-5.697 4.165-8.83 7.394-5.857q.09.083.176.171a3 3 0 0 1 .176-.17c3.23-2.974 9.522.159 7.394 5.856h-1.078c.728-1.677.59-3.005.108-3.947C13.486.878 10.4.28 8.717 2.01zM2.212 10h1.315C4.593 11.183 6.05 12.458 8 13.795c1.949-1.337 3.407-2.612 4.473-3.795h1.315c-1.265 1.566-3.14 3.25-5.788 5-2.648-1.75-4.523-3.434-5.788-5"/>
                    <path d="M10.464 3.314a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.5a.5.5 0 0 0 0 1H4a.5.5 0 0 0 .416-.223l1.473-2.209 1.647 4.118a.5.5 0 0 0 .945-.049l1.598-5.593 1.457 3.642A.5.5 0 0 0 12 9h3.5a.5.5 0 0 0 0-1h-3.162z"/>
                </svg>`
    }
    if($detailCategory.textContent==='ALCOHOL'){
        $detailIcon.innerHTML =`<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cup-straw" viewBox="0 0 16 16">
                      <path d="M13.902.334a.5.5 0 0 1-.28.65l-2.254.902-.4 1.927c.376.095.715.215.972.367.228.135.56.396.56.82q0 .069-.011.132l-.962 9.068a1.28 1.28 0 0 1-.524.93c-.488.34-1.494.87-3.01.87s-2.522-.53-3.01-.87a1.28 1.28 0 0 1-.524-.93L3.51 5.132A1 1 0 0 1 3.5 5c0-.424.332-.685.56-.82.262-.154.607-.276.99-.372C5.824 3.614 6.867 3.5 8 3.5c.712 0 1.389.045 1.985.127l.464-2.215a.5.5 0 0 1 .303-.356l2.5-1a.5.5 0 0 1 .65.278M9.768 4.607A14 14 0 0 0 8 4.5c-1.076 0-2.033.11-2.707.278A3.3 3.3 0 0 0 4.645 5c.146.073.362.15.648.222C5.967 5.39 6.924 5.5 8 5.5c.571 0 1.109-.03 1.588-.085zm.292 1.756C9.445 6.45 8.742 6.5 8 6.5c-1.133 0-2.176-.114-2.95-.308a6 6 0 0 1-.435-.127l.838 8.03c.013.121.06.186.102.215.357.249 1.168.69 2.438.69s2.081-.441 2.438-.69c.042-.029.09-.094.102-.215l.852-8.03a6 6 0 0 1-.435.127 9 9 0 0 1-.89.17zM4.467 4.884s.003.002.005.006zm7.066 0-.005.006zM11.354 5a3 3 0 0 0-.604-.21l-.099.445.055-.013c.286-.072.502-.149.648-.222"/>
                    </svg>`
    }
    if($detailCategory.textContent==='HOBBY'){
        $detailIcon.innerHTML =`<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-music-note-beamed" viewBox="0 0 16 16">
                                <path d="M6 13c0 1.105-1.12 2-2.5 2S1 14.105 1 13s1.12-2 2.5-2 2.5.896 2.5 2m9-2c0 1.105-1.12 2-2.5 2s-2.5-.895-2.5-2 1.12-2 2.5-2 2.5.895 2.5 2"/>
                                <path fill-rule="evenodd" d="M14 11V2h1v9zM6 3v10H5V3z"/>
                                <path d="M5 2.905a1 1 0 0 1 .9-.995l8-.8a1 1 0 0 1 1.1.995V3L5 4z"/>
                            </svg>`
    }
    if($detailCategory.textContent==='BEAUTY'){
        $detailIcon.innerHTML =`<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-hearts" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M4.931.481c1.627-1.671 5.692 1.254 0 5.015-5.692-3.76-1.626-6.686 0-5.015m6.84 1.794c1.084-1.114 3.795.836 0 3.343-3.795-2.507-1.084-4.457 0-3.343M7.84 7.642c2.71-2.786 9.486 2.09 0 8.358-9.487-6.268-2.71-11.144 0-8.358"/>
                            </svg>`
    }
    if($detailCategory.textContent==='STUDY'){
        $detailIcon.innerHTML =`<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                                <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                            </svg>`
    }


</script>

</body>
</html>