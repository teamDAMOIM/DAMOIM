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
<div class="detail-wrap">
    <div class="form-container">
        <div class="title" id="title">${p.title}</div>

        <div class="labelbox">
            <div class="column">
                <label for="writer">작성자: </label>
                <div type="text" id="writer">${p.mid}</div>
            </div>
            <div class="column">
                <label for="date">작성일자: </label>
                <div type="text" id="date">${p.date}</div>
            </div>
        </div>

        <div class="content" id="content" >${p.content}</div>
        <div class="buttons">
            <button class="list-btn" type="button"
                    onclick="window.location.href='/post?type=${ps.type}&keyword=${ps.keyword}'"
            <%--            onclick="window.location.href='/post'"--%>
            >
                목록
            </button>
        </div>
        <div class="comment-add">
            <input id="commentInputValue"/>
            <button id="addBtn">추가</button>

            <select class="select-sorting" name="type" id="search-type">
                <option value="asc">오름차순</option>
                <option value="desc">내림차순</option>
                <option value="descRd">추천순</option> <%--descRecommendation--%>
            </select>
        </div>
        <%--    댓글    --%>
        <div id="replyData">
            <%--
                        댓글 창 입니다.
            --%>

        </div>
        <div class="c">
            <button class="add-btn"></button>
        </div>




    </div>
</div>
<%@ include file="../include/footer.jsp"%>

<script>

    let amount = 5;


    document.querySelector('.add-btn').addEventListener('click', e => {
        if (document.querySelector('.add-btn').textContent === '더보기'){
            amount += 3;
        }else {
            amount -= 3;
        }

        fetchGetComment();
    })

    document.getElementById('addBtn').addEventListener('click', e=>{


        const $inputValue = document.getElementById('commentInputValue');


        const payload = {
            comment : $inputValue.value,
            username : "${login.nickName}",
            pno : ${p.pno},
            memberId : "${login.id}"
        }

        const requestInfo = {
            method : 'post',
            headers : {
                'content-type' : 'application/json'
            },
            body : JSON.stringify(payload)
        }

        fetch("/comment", requestInfo)
            .then(request => {
                if (request.status === 200){
                    alert("성공띠");

                    return request.json();
                }
                else if(request.status === 400){
                    alert("욕하지 마라")
                    return request.text();
                }
                else {
                    alert("실패띠");
                    return request.text();
                }

            })
            .then(response => {
                if (response){
                    $inputValue.value = '';
                    fetchGetComment();
                }
            })
    })


    function fetchGetComment(){
        fetch("/comment/${p.pno}/amount/" + amount)
            .then(request => request.json())
            .then(response=>{
                randerView(response);
                randerButton(response.maxCount);
            })
    }

    function randerView(response) {
        let tag = '';
        if(response.maxCount != 0) {
            for (let r of response.commentList) {
                tag += `
                <div class="bgc">
                    <div class="commentbox">
                        <div type="text" id="commentNo">\${r.commentNo}</div>
                        <div class="column">
                            <label for="commentDate">날짜:</label>
                            <div type="text" id="commentDate">\${r.commentDate}</div>
                        </div>
                        <div class="column">
                            <label for="commentUser">이름:</label>
                            <div type="text" id="commentUsername">\${r.commentUsername}</div>
                        </div>
                        <div class="column">
                            <label for="commentContent">내용:</label>
                            <div type="text" id="commentContent">\${r.commentContent}</div>
                        </div>
                    </div>
                    <div class="Recommendation">
                       <span class="lnr lnr-thumbs-up" id="upbtn"></span>
                        <span class="lnr lnr-thumbs-down"></span>
                    </div>
                </div>
            `;
                document.getElementById('replyData').innerHTML = tag;
            }
        } else{
            document.getElementById('replyData').innerHTML = `<div>없어용</div>`;
        }
    }
    function randerButton(maxCount){
        let element = document.querySelector('.add-btn');

        if (maxCount > 3){
            // 댓글이 3개 초과일때 뜸
            if (amount >= maxCount){
                element.textContent = '간략히 보기';
            } else if (amount <= maxCount){
                element.textContent = '더보기';
            }
        }
    }

    function likeUpbtn(){
        let $element = document.getElementById('replyData');

        $element.onclick = e => {

            e.preventDefault();

            if (e.target.matches('#upbtn')){

            }
        }

    }


    (()=>{
        fetchGetComment();
        likeUpbtn();
    })();



</script>
</body>
</html>