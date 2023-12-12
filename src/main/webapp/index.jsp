<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="gs.GsVO, gs.GSDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>첫 페이지</title>


</head>
<body>
<div class="title">
    <h1>주현이와 준영이의 마트</h1>
</div>
<br>
<div class="title">

<form id="loginForm">
    <input type="text" id="userId" placeholder="ID"><br>
    <input type="password" id="password" placeholder="Password"><br>
    <button type="submit">Login</button>
</form>
</div>
<style>
    .title{
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
    }
</style>
<script>
    document.getElementById('loginForm').onsubmit = function(event) {
        event.preventDefault();

        var userId = document.getElementById('userId').value;
        var password = document.getElementById('password').value;
        if ((userId == 'root') && (password == 'root')){
            location.href = 'posts';

        }else{
            alert('땡! 둘다 root (영어로) 작성해봐요:)');
        }
    };
</script>
</body>
</html>

