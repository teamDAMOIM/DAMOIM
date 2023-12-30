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
    
    function initMap() {
        const map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: -34.397, lng: 150.644},
            zoom: 8
        })

        console.log('Map object:', map);
    }
</script>
</body>
</html>