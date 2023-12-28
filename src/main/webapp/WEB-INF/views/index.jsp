<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Web study</title>
    <%@ include file="include/static-head.jsp" %>
    <script
            async
            defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCIXMTOQG3VQPWySeGS7HKwvfrRWTrrB8&callback=initMap"
    ></script>
</head>
<body>
    <%@ include file="include/header.jsp"%>
    <%@ include file="home/home.jsp"%>


    <%@ include file="include/footer.jsp"%>
<script>
    function initMap() {
        // 지도 초기화 코드
        console.log('지도 초기화!');
    }
</script>
</body>
</html>