<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--  -->
<section id="home-DAMOIM">
    <!-- 지도 보기, 모집 -->
    <div class="map-view-search">

        <!-- 장소 검색 기능, 상세보기 -->
        <div class="detail-place">
            <!-- 장소 검색 -->
            <label class="google-it-place">
<%--                <img src="../assets/img/magnifierIcon.png" alt="magnifierIcon">--%>
                    <img src="/assets/img/magnifierIcon.png" alt="magnifierIcon">
                <input type="text" name="searchPlace">
            </label>

            <!--
                장소 보기
                첫 화면은 내 현재 위치로
                장소 보기를 눌렀을 때 만약 장소 없는(도로, 길, 블럭 빈 부분)은 클릭해도 아무런 반응이 없도록
                장소인데 이미지가 없다면 기본 설정으로 된 이미지가 뜨도록
            -->
            <div class="view-place">
                <div class="place-title pinfo">이건 장소이름</div>
                <img src="#" alt="첫화면, 검색한 장소가 없다면 현재 내위치">
                <div class="place-detail">
                    <div class="place-address pinfo">여기는 주소</div>
                    <input type="button" value="모집하기">
                </div>
            </div>
        </div>

        <!-- 구글 지도 -->
        <div class="view-map">
            여기에 지도 띄울거임
            <img src="#" alt="#">
        </div>
    </div>

    <div class="board-black">

        <div class="free-board-BEST">
            <div class="board-title-free">자유 게시판 <span>BEST</span></div>
            <ul>
                <li class="one-board of">
                    <div class="board-title sub-free">dwlsakjfdlksj</div>
                    <div class="best-user-count">
                        <img src="#" alt="눈알 넣을거임">
                    </div>

                </li>
            </ul>
        </div>

        <div class="recruitment-board">
            <div class="board-title-recruitment">모집 게시판</div>
            <ul>
                <li class="one-board or">
                    <div class="board-title sub-recruit">dsl;kf;ldksg;l</div>
                    <div class="check-user-count">
                        <img src="#" alt="인원이 안채워진다면 빨강 체크,아님 초록체크">
                    </div>
                </li>
            </ul>
        </div>

    </div>

</section>
