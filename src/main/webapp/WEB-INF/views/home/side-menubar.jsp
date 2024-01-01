<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="side-menu">
    <c:forEach var="p" items="${loginPost}">
        <ul class="my-activities">
                <li class="activity-title">${p.memberId}</li>
                <li class="one-activity"> <div class="activity-img"></div> <div class="activity-name">
                    ${p.postTitle}
                </div></li>
        </ul>
    </c:forEach>
</div>