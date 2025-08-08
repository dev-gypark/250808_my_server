<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- 1. 한글 사용 가능하게 설정 -->
<html>
<head>
    <title>**챗봇**</title>
    <meta property="og:title" content="**챗봇**">
    <meta property="og:description" content="Gemini 2.0 Flash로 구현한 챗봇이얌~">
    <style>
        @font-face {
            font-family: 'Ownglyph_daelong-Rg';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2507-2@1.0/Ownglyph_daelong-Rg.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: 'Ownglyph_daelong-Rg';
        }
    </style>

</head>
<body>
<!-- II. 질문을 표시 -->
<p>
    질문 : <%= request.getAttribute("question") %>
</p>
<p>
    <!-- 2. req(request) 안에 set된 'data'라는 attribute가 있다면 출력 -->
    답변 : <%= request.getAttribute("data") %> <!-- 값을 출력 -->
</p>
<!-- I. 주소창이 아니라 우리가 데이터를 화면에서 아예 전달 -->
<form method="post">
    <input name="question">
    <button>질문하기</button>
</form>
</body>
</html>