<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/assets/css/mainHome.css">

<!--  -->
<section class="section">
    <%--  지도보기, 모집  --%>
    <div class="mapview">
        <div class="column">
            <label class="google-it-place">
                <input class="form-control" type="text" name="searchPlace" id="inputAddress">
            </label>
            <c:if test="${login == null}">
            <div class="detail-place">
                <div class="view-place">로그인이 필요한 기능입니다.</div>
            </div>
            </c:if>
        </div>
        <div class="map">
            <c:if test="${login == null}">
                <div class="login">로그인이 필요한 기능입니다.</div>
            </c:if>
            <c:if test="${login != null}">
                <div id="map" style="border-radius: 15px; height: 500px; width: 500px; box-shadow: #666666 3px 3px 5px;"></div>
            </c:if>
        </div>
    </div>
    <div class="boardview">
        <div class="free">
            <a href="/post">
                <div class="board-title-free">자유 게시판 <span>BEST</span></div>
            </a>
            <ul style="padding: 0; margin: 0;">
                <c:forEach var="p" items="${pList}">
                    <a href="/post/detail?pno=${p.pno}">
                        <li class="one-board of">
                            <div class="board-title sub-free">${p.title}</div>
                            <div class="best-user-count"><span class="lnr lnr-user" style="padding: 0 5px;"></span>${p.viewCount}</div>
                        </li>
                    </a>
                </c:forEach>
            </ul>
        </div>
        <div class="recruitment">
            <a href="/recruit">
                <div class="board-title-recruitment">모집 게시판</div>
            </a>
            <ul style="padding: 0; margin: 0;">
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
