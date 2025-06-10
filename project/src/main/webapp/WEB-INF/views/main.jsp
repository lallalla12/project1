<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/main.css" >
</head>
<body>
    <div class="container">
    	<jsp:include page="/resources/common/head.jsp" />
        <div id="content">

            <div class="slider">
                <div class="slides">
                    <img src="/resources/img/사진1.jpg" class="slide" />
                    <img src="/resources/img/사진2.jpg" class="slide" />
                    <img src="/resources/img/사진3.jpg" class="slide" />
                </div>
                <button class="prev">&#10094;</button>
                <button class="next">&#10095;</button>
            </div>

            
            <ul>
                <li><a href="#"> 글1</a></li>
                <li><a href="#"> 글2</a></li>
                <li><a href="#"> 글3</a></li>
                <li><a href="#"> 글4</a></li>
            </ul>
        </div>

        <div id="footer">
            <select>
                <option>제목</option>
                <option>제목 + 내용</option>
                <option>글쓴이</option>
            </select>
            <input type="text" id="txtsearch">
            <input type="button" value="검색" id="searchbtn">
        </div>
    </div>

    <script>
        const slides = document.querySelector('.slides');
        const slideImages = document.querySelectorAll('.slide');
        const prevBtn = document.querySelector('.prev');
        const nextBtn = document.querySelector('.next');
        console.log(prevBtn, nextBtn);
        let currentIndex = 0;
        const totalSlides = slideImages.length;

        function showSlide(index) {
            if (index < 0) index = totalSlides - 1;
            if (index >= totalSlides) index = 0;
            slides.style.transform = `translateX(-${index * 100}%)`;
            currentIndex = index;
        }

        prevBtn.addEventListener('click', () => showSlide(currentIndex - 1));
        nextBtn.addEventListener('click', () => showSlide(currentIndex + 1));

        showSlide(0); // 처음 슬라이드 보이기


    </script>
</body>

</html>
