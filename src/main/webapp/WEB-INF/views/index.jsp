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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC7LCcErx4-uaTP0zFhBenCn9qwTsZsfmY&callback=initMap" async defer></script>
    <%@ include file="include/header.jsp"%>
    <%@ include file="home/home.jsp"%>
    <%@ include file="home/side-menubar.jsp"%>

    <%@ include file="include/footer.jsp"%>
<script>
    var map

    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 15
        }); // 사용자 주소를 가져와서 지도의 중심을 설정
        const userAddress = '${login.address}';
        geocodeAddress(userAddress);
    }

    function geocodeAddress(address) {
        const geocoder = new google.maps.Geocoder();

        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status === 'OK') {
                var location = results[0].geometry.location;

                // 좌표를 기반으로 지도 중심 이동
                map.setCenter(location);
            } else {
                alert("이거 뜨면 망하는거야 !!!!!!!!!");
            }
        });
    }
</script>
</body>
</html>