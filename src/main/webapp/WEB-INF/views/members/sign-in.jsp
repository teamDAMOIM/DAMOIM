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
            <div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
                <div class="text w-100">
                    <h2>Welcome to Damoim</h2>
                    <p>Don't have an account?</p>
                    <a href="#" class="btn btn-white btn-outline-white">Sign Up</a>
                </div>
            </div>
            <div class="login-wrap p-4 p-lg-5">
                <div class="d-flex">
                    <div class="w-100">
                        <h3 class="mb-4">Sign In</h3>
                    </div>
                </div>
                <form action="/members/sign-in" class="signin-form">
                    <div class="form-group mb-3">
                        <label class="label">UserID</label>
                        <input type="text" class="form-control" placeholder="Userid" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">Password</label>
                        <input type="password" class="form-control" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>
                    </div>
                    <div class="form-group d-md-flex">
                        <div class="w-50 text-left">
                            <label class="checkbox-wrap checkbox-primary mb-0">Remember Me
                                <input type="checkbox" checked>
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

</body>
</html>