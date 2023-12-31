<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Web study</title>
    <%@ include file="include/static-head.jsp" %>


</head>
<body>


    <%@ include file="include/header.jsp"%>
    <%@ include file="home/home.jsp"%>

    <%@ include file="home/side-menubar.jsp"%>

    <%@ include file="include/footer.jsp"%>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC7LCcErx4-uaTP0zFhBenCn9qwTsZsfmY&callback=initMap" async defer></script>


<script>
    var map

    const $inputAddress = document.getElementById('inputAddress');


    $inputAddress.onkeydown = e => {
        if (e.keyCode === 13){
            geocodeAddress($inputAddress.value);
        }
    }


    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 15
        }); // 사용자 주소를 가져와서 지도의 중심을 설정
        const userAddress = '${login.address}';
        geocodeAddress(userAddress);
    }
    // 맵 초기 값 설정
    function geocodeAddress(address) {
        const geocoder = new google.maps.Geocoder();

        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status === 'OK') {
                var location = results[0].geometry.location;

                // 좌표를 기반으로 지도 중심 이동
                map.setCenter(location);

            } else {
                alert("정확한 주소를 입력하세요");
            }
        });
    }


    /**
     * 마커를 찍기 위해 비동기로 받은 recruit.address 값 마커 찍기
     * @param address - 모집게시판 전체의 주소 @param : rno - 모집 게시판의 식별자
     */
    function geocodeAddressList(address, rno) {
        const geocoder = new google.maps.Geocoder();

        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status === 'OK') {
                var location = results[0].geometry.location;

                const marker = new google.maps.Marker({
                    map: map,
                    position: location,
                });

                marker.addListener('click', e => {
                    fetchGetRecruite(rno);
                });
            }
        });
    }

    function fetchGetRecruite(rno){
        fetch("/recruitList/" + rno)
            .then(res => {
                return res.json();
            })
            .then(response => {
                console.log(response)
                let tag = `
                    <div class="ani animate__animated animate__zoomIn" data-animate="pulse">
                         <div class="view-place">
                            <div class="place-title pinfo">제목: \${response.title}</div>
                            <div class="place-address pinfo">주소: \${response.address}</div>
                            <div class="place-startdate pinfo">시작일: \${response.startDate}</div>
                            <div class="place-enddate pinfo">마감일: \${response.endDate}</div>
                            <div class="place-recuritcount pinfo">신청수: \${response.count} / \${response.max}</div>
                            <div class="place-recuritcount pinfo"></div>
                            <a href="/recruit/detail?rno=\${rno}" class="  button" type="button" name="recruitment">보러가기</a>
                            <div class="place-detail">
                            </div>
                        </div>
                    </div>
                `;

                document.querySelector('.detail-place').innerHTML = tag;
            })
    }

    








    function fetchGetRecuriteList(){
        fetch("/recruitList")
            .then(res => res.json())
            .then(response => {
                response.forEach(r => {
                    geocodeAddressList(r.recruitAddrass, r.recruitNo);
                })
            })
    }


    (()=>{
        fetchGetRecuriteList();
    })();
</script>
</body>
</html>