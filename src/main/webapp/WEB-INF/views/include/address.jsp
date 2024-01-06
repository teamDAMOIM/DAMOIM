<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="row-ph">
        <select class="form-control" name="placename" id="placename" style="appearance: auto">
            <option value="경상남도">경상남도</option>
            <option value="대전광역시">대전광역시</option>
            <option value="충청남도">충청남도</option>
            <option value="서울특별시">서울특별시</option>
        </select>
        <select class="form-control gnarea" name="placearea" id="경상남도area" value="gn" style="appearance: auto;" >
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
        <select class="form-control daejeonarea" name="placearea" id="대전광역시area" value="daejeon" style="appearance: auto; display: none;" >
            <option value="대덕구">대덕구</option>
            <option value="동구">동구</option>
            <option value="서구">서구</option>
            <option value="유성구">유성구</option>
            <option value="중구">중구</option>
        </select>
        <select class="form-control cnarea" name="placearea" id="충청남도area" value="cn" style="appearance: auto;  display: none;">
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
            <option value="태안군">태안군</option>
            <option value="홍성군">홍성군</option>
        </select>
        <select class="form-control seoularea" name="placearea" id="서울특별시area" value="seoul" style="appearance: auto; display: none;" >
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
    let place = document.getElementById('placename');
    const pla = {
        '경상남도': document.querySelector('.gnarea'),
        '대전광역시': document.querySelector('.daejeonarea'),
        '충청남도': document.querySelector('.cnarea'),
        '서울특별시': document.querySelector('.seoularea')
    };

    place.addEventListener("change", evt => {
        const selectedValue = place.value;

        // 모든 placearea 드롭다운을 숨깁니다.
        for (let key in pla) {
            pla[key].style.display = 'none';
        }

        // 선택한 placearea 드롭다운을 보여줍니다.
        if (selectedValue) {
            const selectedArea = pla[selectedValue];
            if (selectedArea) {
                selectedArea.style.display = 'block';
                console.log(selectedArea.value);
            }
        }
    });

    // 각각의 placearea에 대한 change 이벤트에 대한 리스너 추가
    for (let key in pla) {
        pla[key].addEventListener("change", evt => {
            const selectedArea = pla[key];
            console.log(selectedArea.value);
        });
    }
</script>

