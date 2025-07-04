<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/join.css">

</head>

<body>
	<div class="container">

		<jsp:include page="/resources/common/head.jsp" />
	</div>



	<div id="join-form">
		<form method="post" action="/member/join" onsubmit="return Login()">

			<legend>
				<h2>회원정보입력</h2>
			</legend>
			<table>
				<tr>
					<td><label>아이디</label></td>
					<td><input type="text" name="id" id="id"></td>
					<td><label id="idmsg" class="msg"></label></td>
				</tr>

				<tr>
					<td><label>비밀번호</label></td>
					<td><input type="password" name="pw1" id="pw1"></td>
					<td><label id="pw1msg" class="msg"></label></td>
				</tr>

				<tr>
					<td><label>비밀번호 확인</label></td>
					<td><input type="password" name="pw2" id="pw2"></td>
					<td><label id="pw2msg" class="msg"></label></td>
				</tr>

				<tr>
					<td><label>이름</label></td>
					<td><input type="text" name="name" id="name"></td>
					<td><label id="namemsg" class="msg"></label></td>
				</tr>

				<tr>
					<td><label>휴대폰 번호</label></td>
					<td><input type="tel" name="tel" id="tel"></td>
					<td><label id="telmsg" class="msg"></label></td>
				</tr>

				<tr>
					<td><label>이메일</label></td>
					<td><input type="email" name="email" id="email"></td>
					<td><label id="emailmsg" class="msg"></label></td>
				</tr>


			</table>




			<div class="btn-wrap">
				<input type="submit" value="회원가입" class="btn"> <input
					type="reset" value="초기화" class="btn">
			</div>



		</form>
	</div>

	</div>
	</div>

	<script>
		function Login() {
			// 사용자가 입력한 아이디
			let id = document.getElementById("id");
			// 아이디 관련 msg
			let idmsg = document.getElementById("idmsg");
			// 아이디 정규식
			let idReg = /^(?=.*[a-z])(?=.*[0-9])[a-z0-9]{3,16}$/
			// 사용자가 입력한 비밀번호
			let pw1 = document.getElementById("pw1");
			// 비밀번호 관련 msg
			let pw1msg = document.getElementById("pw1msg");
			// 사용자가 입력한 비밀번호 확인
			let pw2 = document.getElementById("pw2");
			// 비밀번호 확인 관련 msg
			let pw2msg = document.getElementById("pw2msg");
			// 비밀번호 정규식
			let pwReg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+~`\-={}[\]:;"'<>,.?/\\]).{6,10}$/
			// 사용자가 입력한 이름 확인
			let name = document.getElementById("name");
			// 이름 관련 msg
			let namemsg = document.getElementById("namemsg");
			// 이름 정규식
			let nameReg = /^[가-힣]+$/
			// 사용자가 입력한 휴대폰 번호
			let tel = document.getElementById("tel");
			// 휴대폰번호 관련 msg
			let telmsg = document.getElementById("telmsg");
			// 휴대폰 번호 정규식
			let telReg = /^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/
			// 사용자가 입력한 이메일
			let email = document.getElementById("email");
			// 이메일 관련 msg
			let emailmsg = document.getElementById("emailmsg");
			// 이메일 정규식
			let emailReg = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-za-z0-9\-]+/

			// 아이디 true / false
			let idre;
			// 휴대폰번호 true / false
			let numberre;
			// 패스워드 true / false
			let pwre;
			// 패스워드 검증 true / false
			let pwrere;
			// 이메일 검증 true/false
			let emailre;
			// 이름 검증 true/false
			let namere;

			// 정규식 비교
			if (id.value.match(idReg)) {
				// 가능한 아이디입니다
				idmsg.innerHTML = "가능한 아이디입니다"
				idre = true;
			} else {
				//아이디는 3자 이상 16자 이하, 영어 + 숫자로 구성 가능합니다
				idmsg.innerHTML = "아이디는 3자 이상 16자 이하, 영어 + 숫자로 구성해야합니다."
				idre = false;
			}

			if (tel.value.match(telReg)) {
				// 가능한 번호입니다
				telmsg.innerHTML = "가능한 번호입니다"
				numberre = true;
			} else {
				// 숫자만 입력하세요요
				telmsg.innerHTML = " 숫자만 입력하세요"
				numberre = false;
			}

			if (name.value.match(nameReg)) {
				// 가능한 이름입니다
				namemsg.innerHTML = "가능한 이름입니다"
				namere = true;
			} else {
				//이름은 한글만 가능합니다
				namemsg.innerHTML = " 한글만 입력하세요"
				namere = false;
			}

			if (email.value.match(emailReg)) {
				emailmsg.innerHTML = " 가능한 이메일 입니다"
				emailre = true;
			} else {
				emailmsg.innerHTML = "이메일 형식으로 입력하세요"
				emailre = false;
			}

			if (pw1.value.match(pwReg)) {
				pw1msg.innerHTML = "가능한 비밀번호 입니다"
				pwre = true;
			} else {
				pw1msg.innerHTML = "대,소문자+숫자+특수문자 6~10글자로 입력하세요"
				pwre = false;
			}

			if (pw1.value != pw2.value) {
				pw2msg.innerHTML = "비밀번호가 불일치합니다"
				pwrere = false;
			} else if (pw2.value == "") {
				pw2msg.innerHTML = "비밀번호를 입력하세요"
				pwrere = false;
			}

			else if (pw1.value === pw2.value) {
				pw2msg.innerHTML = "일치합니다"
				pwrere = true;
			}

			if (namere == true && numberre == true && idre == true
					&& pwre == true && pwrere == true && emailre == true) {
				return true;

			} else {
				return false;
			}

		}
	</script>



</body>

</html>