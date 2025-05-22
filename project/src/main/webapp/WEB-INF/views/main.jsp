<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/main.css" >
</head>
<body>
    <div class="container">
        <div id="head">
            <div id="title">
                <h2><a href="../HTML/MAIN.HTML">홈페이지</a></h2>
            </div>

            <div id="li1">
                <ul>
                    <li><a href="../html/인기글.html">인기글 </a></li>
                    <li><a href="../html/인기글.html">전체글</a></li>
                    <li><a href="../html/글쓰기.html">글쓰기</a></li>
                </ul>
            </div>

            <div id="btn1">
                <input type="button" value="가입" id="join">
                <input type="button" value="로그인" id="login">
            </div>
        </div>

        <script>
            // 가입버튼을 누르면 회원가입.html로 이동 (jscript 사용)
            document.getElementById('join').addEventListener('click', function () {
                window.location.href = '회원가입.html';
            });
            
            // 로그인 버튼을 누르면 로그인.html으로 이동 (jQuery 사용)
            $(document).ready(function () {
                $('#login').click(function () {
                    window.location.href = '로그인.html';
                });
            });
        </script>



        <div id="content">

            <div class="slider">
                <div class="slides">
                    <img src="../img/images.jpg" class="slide" />
                    <img src="../img/다운로드 (1).jpg" class="slide" />
                    <img src="../img/다운로드.jpg" class="slide" />
                </div>
                <button class="prev">&#10094;</button>
                <button class="next">&#10095;</button>
            </div>

            <script src="script.js"></script>
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
