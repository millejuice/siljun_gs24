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
  <title>free board</title>
  <style>
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
  </style>
  <script>
    function delete_ok(id){
      let a = confirm("정말로 삭제하겠습니까?");
      if(a) location.href='deleteok/' + id;
    }
  </script>
</head>
<body>
<div>
  <h1>주현이와 준영이의 마트</h1>

</div>
<br>
<table id="list" width="90%">
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Stock</th>
    <th>Price</th>
    <th>Image</th>
    <th>UploadTime</th>
    <th>Expiration Date</th>
    <th>1 + 1 ?</th>
    <th>Detail</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${list}" var="u">
    <tr>
      <td>${u.itemId}</td>
      <td>${u.itemName}</td>
      <td>${u.stock}</td>
      <td>${u.itemPrice}</td>
      <td>${u.itemImage}</td>
      <td>${u.uploadTime}</td>
      <td>${u.expirationDate}</td>
      <td>${u.onePlusOne}</td>
      <td><a href="view/${u.itemId}">Detail</a></td>
      <td><a href="editform/${u.itemId}">Edit</a></td>
      <td><a href="javascript:delete_ok('${u.itemId}')">Delete</a></td>
    </tr>
  </c:forEach>
</table>
<br/><a href="add">목록 추가하기</a>
</body>
</html>
