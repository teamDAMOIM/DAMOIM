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
<%--    댓글    --%>
        <div class="ss">
<%--
            댓글 창 입니다.
--%>


        </div>

        <button class="add-btn" type="button">더보기</button>


    </div>
</div>
<%@ include file="../include/footer.jsp"%>

<script>
    document.querySelector('.add-btn').addEventListener('click', e => {
        console.log("클릭")
    })


    function fetchGetComment(){
        fetch("/comment/${p.pno}/amount/5")
            .then(request => request.json())
            .then(response=>{

                randerView(response)
            })
    }

    function randerView(response) {
        let tag = '';
        for (let r of response){
            tag += `
            <div class="commentbox">
                <div type="text" id="commentNo">\${r.commentNo}</div>
                <label for="commentContent">댓글:</label>
                <div type="text" id="commentContent">\${r.commentContent}</div>
                <label for="commentDate">날짜:</label>
                <div type="text" id="commentDate">\${r.commentDate}</div>
                <label for="commentUser">이름:</label>
                <div type="text" id="commentUsername">\${r.commentUsername}</div>
                <label for="commentContent">내용:</label>
                <div type="text" id="commentContent">\${r.commentContent}</div>
             </div>
        `;
            console.log(response)

            document.querySelector('.ss').innerHTML = tag;
        }
    }

    (()=>{

        fetchGetComment();

    })();
</script>
</body>
</html>