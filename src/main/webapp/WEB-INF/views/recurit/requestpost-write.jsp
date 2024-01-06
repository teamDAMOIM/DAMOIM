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
                <div class="rp-write-board-contain">
                    <div class="rp-type-item rp-write-top">
                        <div class="icon-type">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                        </div>
                        <select for="title" class="form-select" name="category" id="search-type">
                            <option value="FREEDOM" selected >자유</option>
                            <option value="EXERCISE">운동</option>
                            <option value="ALCOHOL">술</option>
                            <option value="HOBBY">취미</option>
                            <option value="STUDY">스터디</option>
                        </select>
                        <input type="text" id="title" class="rp-title" name="title" placeholder="title" required>
                    </div><%-- rp-write-top --%>

                    <div class="rp-board-content">
                        <label for="content" class="rp-sub-title-content">
                            <div class="content-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-file-text-fill" viewBox="0 0 16 16">
                                    <path d="M12 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2M5 4h6a.5.5 0 0 1 0 1H5a.5.5 0 0 1 0-1m-.5 2.5A.5.5 0 0 1 5 6h6a.5.5 0 0 1 0 1H5a.5.5 0 0 1-.5-.5M5 8h6a.5.5 0 0 1 0 1H5a.5.5 0 0 1 0-1m0 2h3a.5.5 0 0 1 0 1H5a.5.5 0 0 1 0-1"/>
                                </svg>
                            </div>
                            <div class="rp-content-sub-item">내용</div>
                        </label>
                        <textarea id="content" class="rp-content-write" name="content" maxlength="800" required style="resize: none;" rows="30" cols="80"></textarea>
                    </div>

                    <label for="maxUserCount" class="rp-count-item">
                        <div class="count-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0"/>
                                <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
                            </svg>
                        </div>
                        <div class="rp-count-sub-item">모집 인원수</div>
                        <input type="number" id="maxUserCount" class="count-num" name="maxNumCount" required>
                    </label>

                    <label for="endDate" class="rp-end-date-item">
                        <div class="date-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar-event" viewBox="0 0 16 16">
                                <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5z"/>
                                <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5M1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4z"/>
                            </svg>
                        </div>
                        <div class="rp-date-item w-endDate">모집 기한
                            <input type="date" id="endDate" class="end-date-calendar" name="endDate" required>
                            <input type="time" class="end-time-clock" name="endDate" required>
                        </div>
                    </label>

                    <label for="address-write-input" class="address-info-item">
                        <div class="address-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house-add-fill" viewBox="0 0 16 16">
                                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 1 1-1 0v-1h-1a.5.5 0 1 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                                <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                                <path d="m8 3.293 4.712 4.712A4.5 4.5 0 0 0 8.758 15H3.5A1.5 1.5 0 0 1 2 13.5V9.293z"/>
                            </svg>
                        </div>
                        <div class="address-sub-title">모임 장소</div>
<%--                        <input type="text" id="address-write-input" class="address-write-item" readonly>--%>
                        <div id="address-write-input" class="address-write-item">
                            <%@include file="../include/address.jsp"%>
                        </div>
                    </label>

                </div>

                <div class="buttons-item">
                    <div class="list-item">
                        <div class="list-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-list-ul" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5m-3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2m0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2m0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2"/>
                            </svg>
                        </div>
                        <button type="button" class="list-btn">list</button>
                    </div>
                    <div class="put-up-item">
                        <div class="put-up-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-upload" viewBox="0 0 16 16">
                                <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
                                <path d="M7.646 1.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 2.707V11.5a.5.5 0 0 1-1 0V2.707L5.354 4.854a.5.5 0 1 1-.708-.708z"/>
                            </svg>
                        </div>
                        <button type="submit" class="put-btn">put</button>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <%@ include file="../include/footer.jsp"%>

    <script>
        // 주소 넣기
        let $addressPlace = document.querySelector('.form-control');
        let $addressArea = document.querySelectorAll('.placearea');

        let $id=document.getElementById('경상남도area');
        let $newId = '';

        // place 저장 값
        let p = $addressPlace.value;
        let newPlace = '';

        // area 저장 값
        let att = 'gnarea';


        $addressPlace.onchange = function (){
            if($addressPlace.value==='경상남도'){
                console.log(document.getElementById('경상남도area'));
                $id = document.getElementById('경상남도area');
                p = '경상남도';
                att='gnarea'
            }
            if($addressPlace.value==='대전광역시'){
                console.log(document.getElementById('대전광역시area'))
                $id = document.getElementById('대전광역시area')
                p = '대전광역시';
                att='daejeonarea';
            }
            if($addressPlace.value==='충청남도'){
                console.log(document.getElementById('충청남도area'))
                $id = document.getElementById('충청남도area')
                p = '충청남도';
                att='cnarea';
            }
            if($addressPlace.value==='서울특별시'){
                console.log(document.getElementById('서울특별시area'))
                $id = document.getElementById('서울특별시area')
                p = '서울특별시';
                att='seoularea';
            }

            if(p !== newPlace && newPlace!==''){
                $newId = document.getElementById(newPlace+'area');
                $newId.setAttribute('name', att);
                console.log(newPlace+'-'+p+'-'+att);
            }


            $id.onchange = function (){
                console.log($id.value)

                $id.setAttribute('name', 'area');

                newPlace = p;

                console.log($id)
            }



        }

        // 인원 수 2명 이하 제한
        let $numCount = document.querySelector('.count-num');
        $numCount.onchange = function() {
            if($numCount.value.trim()==='')
                return;

            if($numCount.value < 2){
                $numCount.value=2;
                console.log($numCount.value);
                alert('!!2명 이하 제한!!');
            }
        }

        // put 버튼의 이벤트 추가
        let $putBtn = document.querySelector('.put-btn');

        $putBtn.onclick = e => {
            if($numCount.value < 2){
                $numCount.value=2;
                e.preventDefault();
            }
        }

        // list 버튼의 이벤트 추가
        let $listBtn = document.querySelector('.list-item');
        $listBtn.onclick = e =>{
            window.location.href=window.location.href='/recruit';
        }

        // 카테고리에 따른 아이콘 변화
        let $cType = document.querySelector('.form-select');
        $cType.onchange = function (){
            let typeValue = $cType.value;
            // console.log(typeValue)

            let $typeIcon = document.querySelector('.icon-type');
            // console.log($typeIcon.innerHTML)

            if(typeValue === 'FREEDOM'){
                $typeIcon.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" className="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>`
            }
            else if(typeValue === 'EXERCISE'){
                $typeIcon.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" className="bi bi-heart-pulse" viewBox="0 0 16 16">
                    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053.918 3.995.78 5.323 1.508 7H.43c-2.128-5.697 4.165-8.83 7.394-5.857q.09.083.176.171a3 3 0 0 1 .176-.17c3.23-2.974 9.522.159 7.394 5.856h-1.078c.728-1.677.59-3.005.108-3.947C13.486.878 10.4.28 8.717 2.01zM2.212 10h1.315C4.593 11.183 6.05 12.458 8 13.795c1.949-1.337 3.407-2.612 4.473-3.795h1.315c-1.265 1.566-3.14 3.25-5.788 5-2.648-1.75-4.523-3.434-5.788-5"/>
                    <path d="M10.464 3.314a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.5a.5.5 0 0 0 0 1H4a.5.5 0 0 0 .416-.223l1.473-2.209 1.647 4.118a.5.5 0 0 0 .945-.049l1.598-5.593 1.457 3.642A.5.5 0 0 0 12 9h3.5a.5.5 0 0 0 0-1h-3.162z"/>
                </svg>`
            }
            else if(typeValue === 'ALCOHOL'){
                $typeIcon.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cup-straw" viewBox="0 0 16 16">
                      <path d="M13.902.334a.5.5 0 0 1-.28.65l-2.254.902-.4 1.927c.376.095.715.215.972.367.228.135.56.396.56.82q0 .069-.011.132l-.962 9.068a1.28 1.28 0 0 1-.524.93c-.488.34-1.494.87-3.01.87s-2.522-.53-3.01-.87a1.28 1.28 0 0 1-.524-.93L3.51 5.132A1 1 0 0 1 3.5 5c0-.424.332-.685.56-.82.262-.154.607-.276.99-.372C5.824 3.614 6.867 3.5 8 3.5c.712 0 1.389.045 1.985.127l.464-2.215a.5.5 0 0 1 .303-.356l2.5-1a.5.5 0 0 1 .65.278M9.768 4.607A14 14 0 0 0 8 4.5c-1.076 0-2.033.11-2.707.278A3.3 3.3 0 0 0 4.645 5c.146.073.362.15.648.222C5.967 5.39 6.924 5.5 8 5.5c.571 0 1.109-.03 1.588-.085zm.292 1.756C9.445 6.45 8.742 6.5 8 6.5c-1.133 0-2.176-.114-2.95-.308a6 6 0 0 1-.435-.127l.838 8.03c.013.121.06.186.102.215.357.249 1.168.69 2.438.69s2.081-.441 2.438-.69c.042-.029.09-.094.102-.215l.852-8.03a6 6 0 0 1-.435.127 9 9 0 0 1-.89.17zM4.467 4.884s.003.002.005.006zm7.066 0-.005.006zM11.354 5a3 3 0 0 0-.604-.21l-.099.445.055-.013c.286-.072.502-.149.648-.222"/>
                    </svg>`
            }
            else if(typeValue === 'HOBBY'){
                $typeIcon.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-music-note-beamed" viewBox="0 0 16 16">
                                <path d="M6 13c0 1.105-1.12 2-2.5 2S1 14.105 1 13s1.12-2 2.5-2 2.5.896 2.5 2m9-2c0 1.105-1.12 2-2.5 2s-2.5-.895-2.5-2 1.12-2 2.5-2 2.5.895 2.5 2"/>
                                <path fill-rule="evenodd" d="M14 11V2h1v9zM6 3v10H5V3z"/>
                                <path d="M5 2.905a1 1 0 0 1 .9-.995l8-.8a1 1 0 0 1 1.1.995V3L5 4z"/>
                            </svg>`
            }
            else if(typeValue === 'STUDY'){
                $typeIcon.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                                <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                            </svg>`
            }
            else{
                $typeIcon.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="color: #ff601a;" fill="currentColor" class="bi bi-hearts" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M4.931.481c1.627-1.671 5.692 1.254 0 5.015-5.692-3.76-1.626-6.686 0-5.015m6.84 1.794c1.084-1.114 3.795.836 0 3.343-3.795-2.507-1.084-4.457 0-3.343M7.84 7.642c2.71-2.786 9.486 2.09 0 8.358-9.487-6.268-2.71-11.144 0-8.358"/>
                            </svg>`
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

        // 지금 시간으로 지정
        let $endTime = document.querySelector('.end-time-clock');

        /*let formattedTime = new Date().toLocaleTimeString('en-US', {hour12: true, hour: '2-digit', minute: '2-digit'});
        console.log(formattedTime);
        $endTime.value = formattedTime;*/

        function getCurrentTime() {
            const now = new Date();

            const hours = now.getHours();
            const minutes = now.getMinutes();

            // "HH:mm" 형태
            const formattedTime = padZero(hours) + ':' + padZero(minutes);

            return formattedTime;
        }

        // 1~9 => 01, ..., 09
        function padZero(number) {
            return number < 10 ? '0'+number : number;
        }

        const currentTime = getCurrentTime();
        console.log(currentTime);

        // $endTime에 현재 시간 설정
        $endTime.value = currentTime;
    </script>
</body>
</html>