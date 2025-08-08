<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }


        .chat-container {
            max-width: 500px;
            margin: 50px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 20px;
        }

        .chat-box {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-bottom: 20px;
        }

        .message {
            max-width: 70%;
            padding: 10px 15px;
            border-radius: 20px;
            line-height: 1.4;
        }

        .user-message {
            align-self: flex-end;
            background-color: #ffe812; /* 카톡 노란색 */
            border-bottom-right-radius: 0;
        }

        .bot-message {
            align-self: flex-start;
            background-color: #e5e5ea; /* 연회색 */
            border-bottom-left-radius: 0;
        }

        form {
            display: flex;
            gap: 10px;
        }

        input[name="question"] {
            flex: 1;
            padding: 10px;
            border-radius: 20px;
            border: 1px solid #ccc;
            font-family: inherit;
            outline: none;
        }

        button {
            padding: 10px 15px;
            border: none;
            background-color: #ffe812;
            border-radius: 20px;
            cursor: pointer;
            font-family: inherit;
        }

        button:hover {
            background-color: #fdd835;
        }
    </style>
</head>
<body>
    <div class="chat-container">
        <h2>💬 챗봇</h2>
        <div class="chat-box">
            <% if (request.getAttribute("question") != null) { %>
                <div class="message user-message">
                    <%= request.getAttribute("question") %>
                </div>
            <% } %>

            <% if (request.getAttribute("data") != null) { %>
                <div class="message bot-message">
                    <%= request.getAttribute("data") %>
                </div>
            <% } %>
        </div>

        <form method="post">
            <input name="question" placeholder="메시지를 입력하세요" required>
            <button type="submit">전송</button>
        </form>
    </div>
</body>
</html>
