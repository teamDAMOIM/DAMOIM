<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/assets/css/mainHome.css">

<!--  -->
<section id="home-DAMOIM">
    <!-- 지도 보기, 모집 -->
    <div class="map-view-search">
        <label class="google-it-place">
            <img src="/assets/img/magnifierIcon.png" alt="magnifierIcon">
            <!-- <img src="/assets/img/magnifierIcon.png" alt="magnifierIcon"> -->
            <input type="text" name="searchPlace" id="inputAddress">
        </label>

        <!-- 장소 검색 기능, 상세보기 -->
        <div class="detail-place">
            <!-- 장소 검색 -->

            <!--
                장소 보기
                첫 화면은 내 현재 위치로
                장소 보기를 눌렀을 때 만약 장소 없는(도로, 길, 블럭 빈 부분)은 클릭해도 아무런 반응이 없도록
                장소인데 이미지가 없다면 기본 설정으로 된 이미지가 뜨도록
            -->

        </div>

        <!-- 구글 지도 -->
        <div class="map">
            여기에 지도 띄울거임
            <c:if test="${login == null}">
                <div>로그인해라</div>
            </c:if>
            <c:if test="${login != null}">
                <div id="map" style="border-radius: 30px; height: 300px; width: 300px"></div>
            </c:if>
        </div>
    </div>


    <div class="board-black">
        <!--
            free-board-BEST - 조회수가 가장 높은 7개를 순서대로 보여준다(내림차)
            board-title-free - 모든 게시글들이 있는 자유 게시판 페이지으로 이동 한다
            one-board - 이 게시글의 상세보기으로 이동한다
         -->
        <div class="free-board-BEST">
            <a href="/post">
                <div class="board-title-free">자유 게시판 <span>BEST</span></div>
            </a>
            <ul>
                <c:forEach var="p" items="${pList}">
                    <a href="/post/detail?pno=${p.pno}">
                        <li class="one-board of">
                            <div class="board-title sub-free">${p.title}</div>
                            <div class="best-user-count"><img src="/assets/img/hit-count.png" alt="조회수">${p.viewCount}</div>
                        </li>
                    </a>
                </c:forEach>
            </ul>
        </div>

        <!--
            recruitment-board - 최신글 7개를 최신순으로 보여준다(내림차)
            board-title-recruitment - 모든 게시글들이 있는 모집 게시판 페이지으로 이동 한다
            one-board - 이 게시글의 상세보기으로 이동한다
         -->
        <div class="recruitment-board">
            <a href="/recruit">
                <div class="board-title-recruitment">모집 게시판</div>
            </a>
            <ul>
                <c:forEach var="r" items="${rList}">
                    <a href="/recruit/detail?rno=${r.rno}">
                        <li class="one-board or">
                            <div class="board-title sub-recruit">${r.title}[-${r.endDate}]</div>
                            <div class="check-user-count"><img src="/assets/img/red-check.png" alt="check-color">${r.maxCount}</div>
                        </li>
                    </a>
                </c:forEach>
            </ul>
        </div>
    </div>
</section>
