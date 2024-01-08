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
<div class="recruitment-board">
    <div class="main-title-wrap">
        <h1 class="main-title">Recruitment</h1>
        <div class="button-wrap">
            <%@ include file="../home/category.jsp"%>
            <label class="search">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" style="color: #ff7b40" class="bi bi-search" viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                </svg>
                <input type="text" name="keyword" id="inputKeyword">
            </label>
            <%--            <c:if test="${login != null}">--%>
            <button class="add-btn btn">글 쓰기</button>
            <%--            </c:if>--%>
        </div>
    </div>
    <div class="blank-space"></div>

    <div class="container">
        <c:forEach var="r" items="${rList}">
            <a class="rp-one" href="/recruit/detail?rno=${r.rno}" data-category="${r.category}">
                <!-- category icon -->
                <!-- 운동 -->
                <c:if test="${r.category=='EXERCISE'}">
                    <div class="category">
                        <div class="category-icon" style="background: #ffcbb5">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-heart-pulse" viewBox="0 0 16 16">
                                <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053.918 3.995.78 5.323 1.508 7H.43c-2.128-5.697 4.165-8.83 7.394-5.857q.09.083.176.171a3 3 0 0 1 .176-.17c3.23-2.974 9.522.159 7.394 5.856h-1.078c.728-1.677.59-3.005.108-3.947C13.486.878 10.4.28 8.717 2.01zM2.212 10h1.315C4.593 11.183 6.05 12.458 8 13.795c1.949-1.337 3.407-2.612 4.473-3.795h1.315c-1.265 1.566-3.14 3.25-5.788 5-2.648-1.75-4.523-3.434-5.788-5"/>
                                <path d="M10.464 3.314a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.5a.5.5 0 0 0 0 1H4a.5.5 0 0 0 .416-.223l1.473-2.209 1.647 4.118a.5.5 0 0 0 .945-.049l1.598-5.593 1.457 3.642A.5.5 0 0 0 12 9h3.5a.5.5 0 0 0 0-1h-3.162z"/>
                            </svg>
                        </div>
                    </div>
                </c:if>
                <!-- 술 -->
                <c:if test="${r.category=='ALCOHOL'}">
                    <div class="category">
                        <div class="category-icon" style="background: #ffcbb5">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" style="color: #ff601a;" class="bi bi-cup-straw" viewBox="0 0 16 16">
                                <path d="M13.902.334a.5.5 0 0 1-.28.65l-2.254.902-.4 1.927c.376.095.715.215.972.367.228.135.56.396.56.82q0 .069-.011.132l-.962 9.068a1.28 1.28 0 0 1-.524.93c-.488.34-1.494.87-3.01.87s-2.522-.53-3.01-.87a1.28 1.28 0 0 1-.524-.93L3.51 5.132A1 1 0 0 1 3.5 5c0-.424.332-.685.56-.82.262-.154.607-.276.99-.372C5.824 3.614 6.867 3.5 8 3.5c.712 0 1.389.045 1.985.127l.464-2.215a.5.5 0 0 1 .303-.356l2.5-1a.5.5 0 0 1 .65.278M9.768 4.607A14 14 0 0 0 8 4.5c-1.076 0-2.033.11-2.707.278A3.3 3.3 0 0 0 4.645 5c.146.073.362.15.648.222C5.967 5.39 6.924 5.5 8 5.5c.571 0 1.109-.03 1.588-.085zm.292 1.756C9.445 6.45 8.742 6.5 8 6.5c-1.133 0-2.176-.114-2.95-.308a6 6 0 0 1-.435-.127l.838 8.03c.013.121.06.186.102.215.357.249 1.168.69 2.438.69s2.081-.441 2.438-.69c.042-.029.09-.094.102-.215l.852-8.03a6 6 0 0 1-.435.127 9 9 0 0 1-.89.17zM4.467 4.884s.003.002.005.006zm7.066 0-.005.006zM11.354 5a3 3 0 0 0-.604-.21l-.099.445.055-.013c.286-.072.502-.149.648-.222"/>
                            </svg>
                        </div>
                    </div>
                </c:if>
                <!-- 자유 -->
                <c:if test="${r.category=='FREEDOM'}">
                    <div class="category">
                        <div class="category-icon" style="background: #ffcbb5">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" style="color: #ff601a; " class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                        </div>
                    </div>
                </c:if>
                <!-- study -->
                <c:if test="${r.category=='STUDY'}">
                    <div class="category">
                        <div class="category-icon" style="background: #ffcbb5">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                                <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                            </svg>
                        </div>
                    </div>
                </c:if>
                <!-- 뷰티 -->
                <c:if test="${r.category=='BEAUTY'}">
                    <div class="category">
                        <div class="category-icon" style="background: #ffcbb5">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-hearts" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M4.931.481c1.627-1.671 5.692 1.254 0 5.015-5.692-3.76-1.626-6.686 0-5.015m6.84 1.794c1.084-1.114 3.795.836 0 3.343-3.795-2.507-1.084-4.457 0-3.343M7.84 7.642c2.71-2.786 9.486 2.09 0 8.358-9.487-6.268-2.71-11.144 0-8.358"/>
                            </svg>
                        </div>
                    </div>
                </c:if>
                <!-- 취미 -->
                <c:if test="${r.category=='HOBBY'}">
                    <div class="category">
                        <div class="category-icon" style="background: #ffd3be">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-music-note-beamed" viewBox="0 0 16 16">
                                <path d="M6 13c0 1.105-1.12 2-2.5 2S1 14.105 1 13s1.12-2 2.5-2 2.5.896 2.5 2m9-2c0 1.105-1.12 2-2.5 2s-2.5-.895-2.5-2 1.12-2 2.5-2 2.5.895 2.5 2"/>
                                <path fill-rule="evenodd" d="M14 11V2h1v9zM6 3v10H5V3z"/>
                                <path d="M5 2.905a1 1 0 0 1 .9-.995l8-.8a1 1 0 0 1 1.1.995V3L5 4z"/>
                            </svg>
                        </div>
                    </div>
                </c:if>
                <div class="rp-content">
                    <div class="title">${r.title}</div>
                    <%--<div class="user-count">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="20" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
                            <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
                            <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
                        </svg>
                    </div>--%>
                    <div class="endDate">${r.endDate}</div> <!-- 모집 종료일 -->
                </div>
                <div class="maxCount">
                    <!-- 지원자 수가 모집인원 수와 같다면, test문 바꿔야댐-->
                    <c:if test="${r.maxCount<=r.checkCount}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #18c722" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
                            <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
                        </svg>
                    </c:if>
                    <!-- 지원자 수가 모집인원 수보다 작다면 -->
                    <c:if test="${r.maxCount>r.checkCount}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ec1f1f" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
                            <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
                        </svg>
                    </c:if>
                    ${r.maxCount}/${r.checkCount}
                </div> <!-- 모집인원 -->
            </a>
        </c:forEach>
    </div>
</div>

<%@ include file="../include/footer.jsp"%>

<script>
    let $titleElements = document.querySelector(".title");
<<<<<<< HEAD
=======
    // console.log($titleElements.innerText)
>>>>>>> e4986c8d2efe9e9df8f8862e70bf88a96cdc4165

    document.addEventListener("DOMContentLoaded", function() {

        function truncateText(element, maxLength) {
            let text = element.innerText;
            if (text.length > maxLength) {
                element.innerText = text.substring(0, maxLength) + " ···";
            }
        }

        let titleElements = document.querySelectorAll(".title");
        titleElements.forEach(function(title) {
            truncateText(title, 10);
        });
    });

    // 검색할 타입
    document.addEventListener("DOMContentLoaded", function() {
        let categoryFilter = document.querySelector('.form-select');
        let container = document.querySelector('.container');

        categoryFilter.addEventListener("change", function() {
            let selectedCategory = categoryFilter.value;

            let rpItems = document.querySelectorAll('.rp-one');
            rpItems.forEach(function(item) {
                let category = item.getAttribute("data-category");
                if ( selectedCategory !== category) {
                    item.style.display = "none";
                }else {
                    item.style.display = "flex";
                }
            });
        });
    });


    const $writeBtn = document.querySelector('.add-btn');
    $writeBtn.onclick = e => {
        const targetPageURL = '/recruit/write';
        window.location.href = targetPageURL;
    }

    let $inputKeyword = document.getElementById('inputKeyword');

    $inputKeyword.onkeydown = e => {
        fetch("/recruit/type/FREEDOM/keyword/"+$inputKeyword.value)
            .then(res =>
                res.json()
            )
            .then(response => {
                renderView(response);
            })
    }

    function renderView(response) {
        let tag = '';

        let match = true;

        for (let r of response) {
            if (r.title === $inputKeyword.value) {
                tag +=
                    `<a class="rp-one">
                        <div class="category">`

                if(`\${r.category}`==='STUDY'){
                    tag +=
                        `<div class="category-icon" style="background: #ffd3be">
                            <!-- book 아이콘 -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                                <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                            </svg>
                        </div>`
                }
                if(`\${r.category}`==='FREEDOM'){
                    tag +=
                        `<div class="category-icon" style="background: #ffd3be">
                            <!-- 점3개 아이콘 -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" style="color: #ff601a; " class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                        </div>`
                }
                if(`\${r.category}`==='EXERCISE'){
                    tag +=
                        `<div class="category-icon" style="background: #ffd3be">
                            <!-- 심장쿵쾅 아이콘 -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-heart-pulse" viewBox="0 0 16 16">
                                <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053.918 3.995.78 5.323 1.508 7H.43c-2.128-5.697 4.165-8.83 7.394-5.857q.09.083.176.171a3 3 0 0 1 .176-.17c3.23-2.974 9.522.159 7.394 5.856h-1.078c.728-1.677.59-3.005.108-3.947C13.486.878 10.4.28 8.717 2.01zM2.212 10h1.315C4.593 11.183 6.05 12.458 8 13.795c1.949-1.337 3.407-2.612 4.473-3.795h1.315c-1.265 1.566-3.14 3.25-5.788 5-2.648-1.75-4.523-3.434-5.788-5"/>
                                <path d="M10.464 3.314a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.5a.5.5 0 0 0 0 1H4a.5.5 0 0 0 .416-.223l1.473-2.209 1.647 4.118a.5.5 0 0 0 .945-.049l1.598-5.593 1.457 3.642A.5.5 0 0 0 12 9h3.5a.5.5 0 0 0 0-1h-3.162z"/>
                            </svg>
                        </div>`
                }
                if(`\${r.category}`==='ALCOHOL'){
                    tag +=
                        `<div class="category-icon" style="background: #ffd3be">
                            <!-- 병에빨대꽂은 아이콘 -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-cup-straw" viewBox="0 0 16 16">
                                <path d="M13.902.334a.5.5 0 0 1-.28.65l-2.254.902-.4 1.927c.376.095.715.215.972.367.228.135.56.396.56.82q0 .069-.011.132l-.962 9.068a1.28 1.28 0 0 1-.524.93c-.488.34-1.494.87-3.01.87s-2.522-.53-3.01-.87a1.28 1.28 0 0 1-.524-.93L3.51 5.132A1 1 0 0 1 3.5 5c0-.424.332-.685.56-.82.262-.154.607-.276.99-.372C5.824 3.614 6.867 3.5 8 3.5c.712 0 1.389.045 1.985.127l.464-2.215a.5.5 0 0 1 .303-.356l2.5-1a.5.5 0 0 1 .65.278M9.768 4.607A14 14 0 0 0 8 4.5c-1.076 0-2.033.11-2.707.278A3.3 3.3 0 0 0 4.645 5c.146.073.362.15.648.222C5.967 5.39 6.924 5.5 8 5.5c.571 0 1.109-.03 1.588-.085zm.292 1.756C9.445 6.45 8.742 6.5 8 6.5c-1.133 0-2.176-.114-2.95-.308a6 6 0 0 1-.435-.127l.838 8.03c.013.121.06.186.102.215.357.249 1.168.69 2.438.69s2.081-.441 2.438-.69c.042-.029.09-.094.102-.215l.852-8.03a6 6 0 0 1-.435.127 9 9 0 0 1-.89.17zM4.467 4.884s.003.002.005.006zm7.066 0-.005.006zM11.354 5a3 3 0 0 0-.604-.21l-.099.445.055-.013c.286-.072.502-.149.648-.222"/>
                            </svg>
                        </div>`
                }
                if(`\${r.category}`==='BEAUTY'){
                    tag +=
                        `<div class="category-icon" style="background: #ffd3be">
                            <!-- 하트3개뿅뿅 아이콘 -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-hearts" viewBox="0 0 16 16">
                              <path fill-rule="evenodd" d="M4.931.481c1.627-1.671 5.692 1.254 0 5.015-5.692-3.76-1.626-6.686 0-5.015m6.84 1.794c1.084-1.114 3.795.836 0 3.343-3.795-2.507-1.084-4.457 0-3.343M7.84 7.642c2.71-2.786 9.486 2.09 0 8.358-9.487-6.268-2.71-11.144 0-8.358"/>
                            </svg>
                        </div>`
                }
                if(`\${r.category}`==='HOBBY'){
                    tag +=
                        `<div class="category-icon" style="background: #ffd3be">
                            <!-- 음표아이콘 어째든 취미 아이콘 반박시 니말이 맞음-->
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-music-note-beamed" viewBox="0 0 16 16">
                              <path d="M6 13c0 1.105-1.12 2-2.5 2S1 14.105 1 13s1.12-2 2.5-2 2.5.896 2.5 2m9-2c0 1.105-1.12 2-2.5 2s-2.5-.895-2.5-2 1.12-2 2.5-2 2.5.895 2.5 2"/>
                              <path fill-rule="evenodd" d="M14 11V2h1v9zM6 3v10H5V3z"/>
                              <path d="M5 2.905a1 1 0 0 1 .9-.995l8-.8a1 1 0 0 1 1.1.995V3L5 4z"/>
                            </svg>
                        </div>`
                }


                tag +=
                    `</div>
                    <div class="rp-content">
                        <div class="title">\${r.title}</div>
                        <div class="endDate">\${r.endDate}</div> <!-- 모집 종료일 -->
                    </div>
                    <div class="maxCount">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
                            <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
                        </svg>
                        0/\${r.maxCount}
                    </div> <!-- 모집인원 -->
                </a>`

                document.querySelector('.container').innerHTML = tag;
            }
        }
    }


</script>

</body>
</html>