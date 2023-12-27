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

<section class="sign-section">
    <div class="container">
        <div class="wrap">
            <div class="sign-wrap p-4 p-lg-5">
                <div class="d-flex">
                    <div class="w-100">
                        <h3 class="mb-4">Sign Up</h3>
                    </div>
                </div>
                <form action="/members/sign-up" class="signup-form">
                    <div class="form-group mb-3">
                        <label class="label">UserID</label>
                        <input type="text" class="form-control" placeholder="UserId" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">Password</label>
                        <input type="password" class="form-control" placeholder="Password" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">UserName</label>
                        <input type="text" class="form-control" placeholder="UserName" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">NickName</label>
                        <input type="text" class="form-control" placeholder="NickName" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">Phone</label>
                        <input type="text" class="form-control" placeholder="Phone" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">Email</label>
                        <input type="text" class="form-control" placeholder="Email" required>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="form-control btn btn-primary submit px-3">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

</body>
</html>