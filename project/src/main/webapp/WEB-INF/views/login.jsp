<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/login.css" >

</head>

<body>
    <div class="container">
		<jsp:include page="/resources/common/head.jsp" />
	</div>



        <div id="join-form">
            <form method="post" action="/userLogin" onsubmit="return Login()">

                <legend><h2>로그인</h2></legend>
                <table>
                    <tr>
                        <td> <label>아이디</label></td>
                        <td><input type="text" name="id" id="id"></td>
                        <td><label id="idmsg" class="msg"></label></td>
                    </tr>

                    <tr>
                        <td><label>비밀번호</label></td>
                        <td><input type="password" name="pw1" id="pw1"></td>
                        <td><label id="pw1msg" class="msg"></label></td>
                    </tr>

                </table>




                <div class="btn-wrap">
                    <input type="submit" value="로그인" class="btn">
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
            let idReg = /^(?=.*[a-z0-9])[a-z0-9]{3,16}$/
            // 사용자가 입력한 비밀번호
            let pw1 = document.getElementById("pw1");
            // 비밀번호 관련 msg
            let pw1msg = document.getElementById("pw1msg");
            // 비밀번호 정규식
            let pwReg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+~`\-={}[\]:;"'<>,.?/\\]).{6,8}$/

            // 아이디 true / false
            let idre;
            // 패스워드 true / false
            let pwre;


            // 정규식 비교
            if (id.value.match(idReg)) {
                // 가능한 아이디입니다
                namemsg.innerHTML = ""
                idre = true;
            } else {
                //아이디는 3자 이상 16자 이하, 영어 또는 숫자로 구성 가능합니다
                idmsg.innerHTML = "아이디를 입력해주세요."
                idre = false;
            }


            if (pw1.value.match(pwReg)) {
                pw1msg.innerHTML = ""
                pwre = true;
            } else {
                pw1msg.innerHTML = "비밀번호를 입력해주세요."
                pwre = false;
            }


            if (pwre == true && idre == true) {
                return true;

            } else {
                return false;
            }



        }
    </script>



</body>

</html>