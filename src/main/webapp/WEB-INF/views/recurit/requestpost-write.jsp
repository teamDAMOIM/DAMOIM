<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>글쓰자</title>
    <%@ include file="../include/static-head.jsp" %>
</head>
<body>
    <%@ include file="../include/header.jsp"%>

    <%--
        글쓰기

        카테고리 - name: category
        타이틀 - name: title
        내용 - name: content
        모집인원 - name : maxNumCount
        모집종료일 - name : endDate
    --%>
    <section class="recruitment-write-section">
        <div class="recruitment-form-container">
            <form action="/recruit/write" method="post">

                    <label for="title" class="rp-type-item rp-write-top">
                        <div class="icon-type">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                        </div>
                        <select class="form-select" name="type" id="search-type">
                            <option value="FREEDOM" selected >자유</option>
                            <option value="EXERCISE">운동</option>
                            <option value="WINE">술</option>
                            <option value="HOBBY">취미</option>
                            <option value="STUDY">스터디</option>
                        </select>
                        <input type="text" id="title" class="rp-title" name="title" required>
                    </label><%-- rp-write-top --%>

                <div class="rp-write-center">
                    <label for="content" class="rp-item w-cotent">내용</label>
                    <textarea id="content" class="rp-content-item" name="content" maxlength="800" required style="resize: none;" rows="30" cols="80"></textarea>

                </div>

                <div class="rp-count-item">
                    <div class="count-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0"/>
                            <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
                        </svg>
                    </div>
                    <label for="maxUserCount" class="rp-count-sub-item">모집 인원수</label>
                    <input type="number" id="maxUserCount" class="count-num" name="maxCount" required>
                </div>

                <div class="rp-end-date-item">
                    <div class="date-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar-event" viewBox="0 0 16 16">
                            <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5z"/>
                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5M1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4z"/>
                        </svg>
                    </div>
                    <label for="endDate" class="rp-date-item w-endDate">모집 기한</label>
                    <input type="date" id="endDate" class="end-date-calendar" name="endDate" required>
                </div>

                <div class="buttons pd">
                    <button class="list-btn" type="button" onclick="window.location.href='/post'">목록</button>
                    <button type="submit">글쓰기</button>
                </div>
            </form>
        </div>
    </section>

    <%@ include file="../include/footer.jsp"%>

    <script>
        // 인원 2 이하 제한
        let $numCount = document.querySelector('.count-num');
        $numCount.oninput = function() {
            if($numCount.value.trim()==='')
                return;

            if($numCount.value < 2){
                console.log($numCount.value);
                alert('!!2명 이하 제한!!');
                $numCount.value=2;
            }
        }


        // 오늘 날짜로 지정
        let $todayDate = document.querySelector('.end-date-calendar');

        let today = new Date();
        let year = today.getFullYear();
        let month = ('0' + (today.getMonth() + 1)).slice(-2);
        let day = ('0' + today.getDate()).slice(-2);

        let todayInfo = year + '-' + month + '-' + day;
        console.log(todayInfo);

        $todayDate.value = todayInfo;
    </script>
</body>
</html>