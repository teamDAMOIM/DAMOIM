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
                <form action="/members/sign-up" class="signup-form" method="post">
                    <div class="form-group mb-3">
                        <label class="label">UserID</label>
                        <input type="text" class="form-control" placeholder="UserId" name="id">
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">Password</label>
                        <input type="password" class="form-control" placeholder="Password" required name="pw">
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">UserName</label>
                        <input type="text" class="form-control" placeholder="UserName" required name="un">
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">NickName</label>
                        <input type="text" class="form-control" placeholder="NickName" required name="nn">
                    </div>
                    <div class="form-group mb-3 form-ph">
                        <label class="ph-label">Phone</label>
                        <div class="row-ph">
                            <select name="startph" class="form-control ph1" style="appearance: auto">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="012">012</option>
                            </select>_
                            <input type="number" class="form-control ph2" required name="ph" maxlength="4">_
                            <input type="number" class="form-control ph3" required name="pp" maxlength="4">
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">Address</label>
                        <input type="text" class="form-control" placeholder="Address" required name="ad">
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