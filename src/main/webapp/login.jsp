<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        margin: 20px;
    }
    form {
        position: absolute;
        right: 45%;
        top: 25%;
        max-width: 300px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
        display: block;
        margin: 10px 0 5px;
        font-weight: bold;
    }
    input {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        box-sizing: border-box;
    }
    button {
        background-color: #3498db;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button:hover {
        background-color: #2980b9;
    }

    #loginBtn{
        margin-right: 30px;
    }
</style>


<body>



<form action="/login.do" method="post">
    <h2>로그인</h2>
    <label for="userid">아이디:</label>
    <input type="text" id="userid" name="userid" required>

    <label for="password">비밀번호:</label>
    <input type="password" id="password" name="password" required>

    <button id="loginBtn" type="submit">로그인</button>

    <%--    <button id="registBtn">회원 가입</button>--%>
</form>



<script>




    <%--location.href = "${pageContext.request.contextPath}/template.jsp";--%>
</script>
</body>
</html>