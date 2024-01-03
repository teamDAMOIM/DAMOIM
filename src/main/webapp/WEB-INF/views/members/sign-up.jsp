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
                <form action="/members/sign-up" class="signup-form" method="post" enctype="multipart/form-data">
                    <div style="width: 200px; height: 200px; position: relative; " id="img-box" class="timg">
                        <img src="/assets/img/basicProfile.png" alt="프로필" style="position: absolute; width: 200px; height: 200px; border: black; border-style: hidden;  border-radius: 40%;">
                    </div>
                    <input type="file" accept="image/*" style="display: none" id="img-input" name="profile">
                    <div class="form-group mb-3">
                        <label class="label">UserID</label>
                        <label id="idchk"></label>
                        <input type="text" class="form-control" id="m-id" placeholder="UserId" name="id">
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">Password</label>
                        <label id="pwchk"></label>
                        <input type="password" class="form-control" id="m-pw" placeholder="Password" required name="pw">
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">UserName</label>
                        <label id="namechk"></label>
                        <input type="text" class="form-control" id="m-name" placeholder="UserName" required name="un">
                    </div>
                    <div class="form-group mb-3">
                        <label class="label">NickName</label>
                        <label id="nickchk"></label>
                        <input type="text" class="form-control" id="m-nickname" placeholder="NickName" required name="nn">
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
                        <button type="button" class="form-control btn btn-primary submit px-3">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script>
    /*
           핸드폰과 주소는 차후 고민
     */
    const checkResultList = [false, false, false, false];


    const idPattern = /^[a-zA-Z0-9]{4,15}$/;

    const $inputId = document.getElementById('m-id');



    $inputId.onkeyup = e =>{
        if ($inputId.value.trim() === ''){
            $inputId.style.borderColor = 'red';
            document.getElementById('idchk').innerHTML =
                '<b style="color: red">[아이디는 필수값입니다]</b>';
            checkResultList[0] = false;
        }else if(!idPattern.test($inputId.value)){
            $inputId.style.borderColor = 'red';
            document.getElementById('idchk').innerHTML =
                '<b style="color: red">[4 ~ 15글자, 영어, 숫자로 입력!!]</b>';
            checkResultList[0] = false;
        } else{
            fetch('/members/check?type=memberId&keyword=' + $inputId.value)
                .then(res => res.json())
                .then(rep => {
                    if(rep) { // 중복
                        $inputId.style.borderColor = 'red';
                        document.getElementById('idchk').innerHTML =
                            '<b style="color: red">[아이디가 중복됨!!]</b>'
                        checkResultList[0] = false;
                    }else{
                        $inputId.style.borderColor = 'skyblue';
                        document.getElementById('idchk').innerHTML
                            = '<b style="color: skyblue">[사용가능띠!!!]</b>'
                        checkResultList[0] = true;
                    }
                });
        }
    };

    const passwordPattern = /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/;
    const $inputPw = document.getElementById('m-pw');

    $inputPw.onkeyup = e =>{
        if ($inputPw.value.trim() === ''){
            $inputPw.style.borderColor = 'red';
            document.getElementById('pwchk').innerHTML =
                '<b style="color: red">[비밀번호는 필수 값입니다.]</b>';
            checkResultList[1] = false;
        } else if(!passwordPattern.test($inputPw.value)){
            $inputPw.style.borderColor = 'red';
            document.getElementById('pwchk').innerHTML =
                '<b style="color: red">[특수기호와 8글자 이상!!]</b>';
            checkResultList[1] = false;
        } else{
            $inputPw.style.borderColor = 'skyblue';
            document.getElementById('pwchk').innerHTML =
                '<b style="color: skyblue">[사용가능띠!!]</b>'
            checkResultList[1] = true;
        }
    };

   const namePattern = /^[가-힣]+$/;
   const $inputName = document.getElementById('m-name');

   $inputName.onkeyup = e => {
       if($inputName.value.trim() === ''){
           $inputName.style.borderColor = 'red';
           document.getElementById('namechk').innerHTML =
               '<b style="color: red">[이름은 필수 값입니다.]</b>'
           checkResultList[2] = false;

       } else if(!namePattern.test($inputName.value)){
           $inputName.style.borderColor = 'red';
           document.getElementById('namechk').innerHTML =
               '<b style="color: red">[한국어로 입력해주세요!!]</b>'
           checkResultList[2] = false;

       } else{
           $inputName.style.borderColor = 'skyblue';
           document.getElementById('namechk').innerHTML =
               '<b style="color: skyblue">[사용 가능띠!!]</b>';
           checkResultList[2] = true;
       };

       const nickNamePattern = /^[가-힣]+$/;
       const $inputNickname = document.getElementById('m-nickname');

       $inputNickname.onkeyup = e => {
           if ($inputNickname.value.trim() === '') {
               $inputNickname.style.borderColor = 'red';
               document.getElementById('nickchk').innerHTML =
                   '<b style="color: red">[닉네임은 필수 값입니다.]</b>'
               checkResultList[3] = false;

           } else if (!nickNamePattern.test($inputNickname.value)) {
               $inputNickname.style.borderColor = 'red';
               document.getElementById('nickchk').innerHTML =
                   '<b style="color: red">[한국어로 입력해주세요!!]</b>'
               checkResultList[3] = false;

           } else {
               fetch("/members/check?type=memberNickname&keyword=" + $inputNickname.value)
                   .then(res => res.json())
                   .then(rep => {
                       if(rep){ // 중복이 되면
                           $inputNickname.style.borderColor = 'red';
                           document.getElementById('nickchk').innerHTML =
                               '<b style="color: red">[중복 값입니다.]</b>'
                           checkResultList[3] = false;
                       }else{
                           $inputNickname.style.borderColor = 'skyblue';
                           document.getElementById('nickchk').innerHTML =
                               '<b style="color: skyblue">[사용 가능띠!!!]</b>'
                           checkResultList[3] = true;
                       }
                   });
           }
       };
       document.querySelector('.btn').onclick = e =>{
           const $form = document.querySelector('.signup-form');
           if(!checkResultList.includes(false)){
               alert("회원가입이 완료되었습니다.");
               $form.submit();
           }else{
               alert("입력창을확이해라!!!!");
           }
       }
   }
    const $imgbox = document.getElementById('img-box');
    const $imgInput = document.getElementById('img-input');

    $imgbox.onclick = e => {
        $imgInput.click();
    }

    $imgInput.onchange = e => {
        console.log("잘 들어 왔ㅉㅇ")
        const fileDate = $imgInput.files[0];

        const reader = new FileReader();

        reader.readAsDataURL(fileDate);

        reader.onloadend = e => {
            const $img = document.querySelector('.timg img');
            $img.setAttribute('src', reader.result);
        }
    }


</script>


</body>
</html>