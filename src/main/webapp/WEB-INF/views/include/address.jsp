<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row-ph">
    <select class="form-control" name="placename" id="placename" style="appearance: auto">
        <option value="select">도를 선택하세요</option>
        <option value="경남">경상남도</option>
        <option value="대전">대전광역시</option>
        <option value="충남">충청남도</option>
        <option value="서울">서울특별시</option>
    </select>
    <select class="form-control placearea"
            name="gnarea"
    <%--                name="area"--%>
            id="경남area" value="gn" style="appearance: auto;" >
        <option value="select">시/군을 선택하세요</option>
        <option value="거제시">거제시</option>
        <option value="거창군">거창군</option>
        <option value="고성군">고성군</option>
        <option value="김해시">김해시</option>
        <option value="남해군">남해군</option>
        <option value="밀양시">밀양시</option>
        <option value="사천시">사천시</option>
        <option value="산청군">산청군</option>
        <option value="양산시">양산시</option>
        <option value="의령군">의령군</option>
        <option value="진주시">진주시</option>
        <option value="창녕군">창녕군</option>
        <option value="창원시">창원시</option>
        <option value="통영시">통영시</option>
        <option value="하동군">하동군</option>
        <option value="함안군">함안군</option>
        <option value="함양군">함양군</option>
        <option value="합천군">합천군</option>
    </select>
    <select class="form-control placearea"
            name="daejeonarea"
    <%--                name="area"--%>
            id="대전area" value="daejeon" style="appearance: auto; display: none;" >
        <option value="select">시/군을 선택하세요</option>
        <option value="대덕구">대덕구</option>
        <option value="동구">동구</option>
        <option value="서구">서구</option>
        <option value="유성구">유성구</option>
        <option value="중구">중구</option>
    </select>
    <select class="form-control placearea"
            name="cnarea"
    <%--                name="area"--%>
            id="충남area" value="cn" style="appearance: auto;  display: none;">
        <option value="select">시/군을 선택하세요</option>
        <option value="계룡시">계룡시</option>
        <option value="공주시">공주시</option>
        <option value="금산군">금산군</option>
        <option value="논산시">논산시</option>
        <option value="당진시">당진시</option>
        <option value="부여군">부여군</option>
        <option value="서산시">서산시</option>
        <option value="서천군">서천군</option>
        <option value="아산시">아산시</option>
        <option value="예산군">예산군</option>
        <option value="천안시">천안시</option>
        <option value="청양군">청양군</option>
        <option value="태안군">태안군</option>
        <option value="홍성군">홍성군</option>
    </select>
    <select class="form-control placearea"
            name="seoularea"
    <%--                name="area"--%>
            id="서울area" value="seoul" style="appearance: auto; display: none;" >
        <option value="select">시/군을 선택하세요</option>
        <option value="강남구">강남구</option>
        <option value="강동구">강동구</option>
        <option value="강북구">강북구</option>
        <option value="강서구">강서구</option>
        <option value="관악구">관악구</option>
        <option value="광진구">광진구</option>
        <option value="구로구">구로구</option>
        <option value="금천구">금천구</option>
        <option value="노원구">노원구</option>
        <option value="도봉구">도봉구</option>
        <option value="동대문구">동대문구</option>
        <option value="동작구">동작구</option>
        <option value="마포구">마포구</option>
        <option value="서대문구">서대문구</option>
        <option value="서초구">서초구</option>
        <option value="성동구">성동구</option>
        <option value="성북구">성북구</option>
        <option value="송파구">송파구</option>
        <option value="양천구">양천구</option>
        <option value="영등포구">영등포구</option>
        <option value="용산구">용산구</option>
        <option value="은평구">은평구</option>
        <option value="종로구">종로구</option>
        <option value="중구">중구</option>
        <option value="중랑구">중랑구</option>
    </select>
</div>

<script>
    let se = false;

    let $addressPlace = document.getElementById('placename');
    let $addressArea = document.querySelectorAll('.placearea');

    // let place = document.getElementById('placename');
    // let pla = document.querySelectorAll('.placearea');

    $addressPlace.addEventListener("change", evt => {
        const selectedValue = $addressPlace.value;


        // 모든 placearea 드롭다운을 숨깁니다.
        $addressArea.forEach(area => {
            area.style.display = 'none';
        });

        // 선택한 placearea 드롭다운을 보여줍니다.
        if (selectedValue) {
            const selectedArea = document.getElementById(selectedValue + 'area');
            if (selectedArea) {
                selectedArea.style.display = 'block';

            }

        }

    });



    // 주소 넣기


    let $id=document.getElementById('경남area');
    let $newId = '';

    // place 저장 값
    let p = $addressPlace.value;
    let newPlace = '';

    // area 저장 값
    let att = 'gnarea';


    $addressPlace.onchange = function (){
        if($addressPlace.value==='경남'){
            console.log(document.getElementById('경남area'));
            $id = document.getElementById('경남area');
            p = '경남';
            att='gnarea'
        }
        if($addressPlace.value==='대전'){
            console.log(document.getElementById('대전area'))
            $id = document.getElementById('대전area')
            p = '대전';
            att='daejeonarea';
        }
        if($addressPlace.value==='충남'){
            console.log(document.getElementById('충남area'))
            $id = document.getElementById('충남area')
            p = '충남';
            att='cnarea';
        }
        if($addressPlace.value==='서울'){
            console.log(document.getElementById('서울area'))
            $id = document.getElementById('서울area')
            p = '서울';
            att='seoularea';
        }

        if(p !== newPlace && newPlace!==''){
            $newId = document.getElementById(newPlace+'area');
            $newId.setAttribute('name', att);
            console.log(newPlace+'-'+p+'-'+att);
        }


        $id.onchange = function (){
            console.log($id.value)

            $id.setAttribute('name', 'area');

            newPlace = p;

            se = true;

            console.log($id)
        }



    }



</script>