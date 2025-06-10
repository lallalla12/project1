<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글쓰기</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/main.css" >
    <link rel="stylesheet" href="/resources/css/write.css" >
</head>

<body>
    <div class="container">
		<jsp:include page="/resources/common/head.jsp" />
	</div>


        <div id="write-form">
            <h2>글쓰기</h2>
        
            <label for="title">제목</label>
            <input type="text" id="title" placeholder="제목을 입력하세요">
        
            <label for="content">내용</label>
            <textarea id="content" placeholder="내용을 입력하세요"></textarea>
        
            <div class="btn-wrap">
                <input type="button" value="등록" id="submit">
            </div>
        </div>

        </div>
    </div>



</body>
</html>