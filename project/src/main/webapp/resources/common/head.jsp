<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/resources/css/head.css" >
<div id="head">
	<div id="title">
		<h2>
			<a href="/">홈페이지</a>
		</h2>
	</div>

	<div id="li1">
		<ul>
			<li><a href="/best">인기글 </a></li>
			<li><a href="/list">전체글</a></li>
			<li><a href="/write">글쓰기</a></li>
		</ul>
	</div>

	<div id="btn1">
		 <c:choose>
        	<c:when test="${not empty sessionScope.loginUser}">
            <span>${sessionScope.loginUser.name}님 반갑습니다.</span>
            <form action="/logout" method="post" style="display:inline;">
                <input type="submit" value="로그아웃">
            </form>
        	</c:when>
        <c:otherwise>
            <input type="button" value="가입" id="join">
            <input type="button" value="로그인" id="login">
        </c:otherwise>
    </c:choose>
	</div>
</div>

<script>
	// 가입버튼을 누르면 회원가입.html로 이동 (jscript 사용)
	document.getElementById('join').addEventListener('click', function() {
		window.location.href = '/join';
	});

	// 로그인 버튼을 누르면 로그인.html으로 이동 (jQuery 사용)
	$(document).ready(function() {
		$('#login').click(function() {
			window.location.href = '/login';
		});
	});
</script>