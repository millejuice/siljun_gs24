<%--
  Created by IntelliJ IDEA.
  User: juhyun
  Date: 2023/12/11
  Time: 1:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="gs.GsVO, gs.GSDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>마트 본체</title>

</head>
<body>
<div class="container">
<div class="title">
  <h1>주현이와 준영이의 마트</h1>
</div>
<br>
<br/>
<div class="title">
<a href="add">상품 등록하기</a>
</div>
<br>
<div id="cardContainer">
  <c:forEach items="${list}" var="u">
    <div class="itemCard">
      <a href="view/${u.itemId}" class="cardContent">
        <h3>${u.itemName}</h3>
        <p>${u.itemPrice}</p>
      </a>
      <div class="cardActions">
        <a href="editform/${u.itemId}">수정</a>
        <a href="javascript:delete_ok('${u.itemId}')">폐기</a>
      </div>
    </div>
  </c:forEach>
</div>
</div>

<style>
  .container{
    width: 100vw;
    height: 100vh;
    list-style-image: url('../resources/img/gs.jpeg');
    background-size: cover; /* Cover the entire page */
    background-position: center; /* Center the image */
  }

  #list {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
  }
  #list td, #list th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align:center;
  }
  #list tr:nth-child(even){background-color: #f2f2f2;}
  #list tr:hover {background-color: #ddd;}
  #list th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #006bb3;
    color: white;
  }
  .title{
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
  #cardContainer {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 10px;
    width: 90%;
    margin: auto;
  }
  .cardImage {
    width: 100%;
    height: auto;
    display: block;
  }

  .itemCard {
    background: #f0f0f0;
    border: 1px solid #ddd;
    padding: 20px;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }

  .cardContent {
    color: inherit;
    text-decoration: none;
  }

  .cardContent:hover {
    text-decoration: none;
  }

  .cardActions a {
    display: inline-block;
    margin: 5px;
    padding: 5px;
    background-color: #e0e0e0;
    color: #333;
    text-decoration: none;
    border-radius: 4px;
  }

  .cardActions a:hover {
    background-color: #d4d4d4;
  }

  .itemCard h3, .itemCard p {
    margin: 0;
  }

  @media (max-width: 768px) {
    #cardContainer {
      grid-template-columns: repeat(2, 1fr);
    }
  }
</style>
<script>
  function delete_ok(id){
    let a = confirm("정말로 삭제하겠습니까?");
    if(a) location.href='deleteok/' + id;
  }
</script>
</body>
</html>
