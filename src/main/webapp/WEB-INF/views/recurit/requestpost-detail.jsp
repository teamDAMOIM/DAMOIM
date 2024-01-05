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
        <div class="top-detail-header">
            <div class="logo-img">
                <div class="title" id="title">${r.title}</div>
                <div class="top-writer">
                    <img src="/assets/img/personIcon.png" alt="person-icon">
                    <label for="writer" class="top-writer-item"></label>
                    <div type="text" id="writer">작성자</div>
                </div>
            </div>
        </div>

        <div class="center-details-items">
            <div class="detail-content-item">
                <label for="content">내용</label>
                <div id="content">${r.content}</div>
            </div>

            <div class="detail-startDate-item">
                <label for="sdate">작성 날짜</label>
                <div type="text" id="sdate">${r.startDate}</div>
            </div>

            <div class="detail-endDate-item">
                <label for="edate">모집마감일</label>
                <div type="text" id="edate">${r.endDate}</div>
            </div>
        </div>


        <%-- 버튼 contain --%>
        <div class="detail-buttons-item">
            <%-- 신청 버튼 --%>
            <button class="check-person-number" type="button" name="check">
                <label class="count-info">
                    <label class="count-check-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0"/>
                            <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
                        </svg>
                    </label>
                    <label class="checkCount">신청 인원(checkCount)</label>
                    <span>/</span>
                    <label class="recruitment-max-count">모집 인원(maxCount)</label>
                </label>
                <span>신청하기</span>
            </button>
            <%-- 목록 보기 --%>
            <button class="list-view" type="button" onclick="window.location.href='/recruit'">
                <label class="list-view-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-binoculars-fill" viewBox="0 0 16 16">
                        <path d="M4.5 1A1.5 1.5 0 0 0 3 2.5V3h4v-.5A1.5 1.5 0 0 0 5.5 1zM7 4v1h2V4h4v.882a.5.5 0 0 0 .276.447l.895.447A1.5 1.5 0 0 1 15 7.118V13H9v-1.5a.5.5 0 0 1 .146-.354l.854-.853V9.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v.793l.854.853A.5.5 0 0 1 7 11.5V13H1V7.118a1.5 1.5 0 0 1 .83-1.342l.894-.447A.5.5 0 0 0 3 4.882V4zM1 14v.5A1.5 1.5 0 0 0 2.5 16h3A1.5 1.5 0 0 0 7 14.5V14zm8 0v.5a1.5 1.5 0 0 0 1.5 1.5h3a1.5 1.5 0 0 0 1.5-1.5V14zm4-11H9v-.5A1.5 1.5 0 0 1 10.5 1h1A1.5 1.5 0 0 1 13 2.5z"/>
                    </svg>
                </label>
                <span>목록보기</span>
            </button>
        </div>
    </div>


<%@ include file="../include/footer.jsp"%>
</body>
</html>