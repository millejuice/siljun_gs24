<%--
  Created by IntelliJ IDEA.
  User: juhyun
  Date: 2023/12/11
  Time: 2:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="gs.GsVO, gs.GSDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상품 수정하기</title>
</head>
<body>
<h1>상품 수정하기</h1>
<%--@elvariable id="u" type=""--%>
<form:form modelAttribute="u" action="../editok" method="post">
    <form:hidden path="itemId"/>
    <table id="edit">
            <tr><td>name:</td><td><input type="text" name="itemName"/></td></tr>
            <tr><td>stock:</td><td><input type="number" name="stock"/></td></tr>
            <tr><td>price:</td><td><input type="number" name="itemPrice"/></td></tr>
            <tr><td>image:</td><td><input type="text" name="itemImage" accept="image/*"/></td></tr>
            <tr><td>One Plus One?</td><td>
                <input type="radio" id="onePlusOneYes" name="onePlusOne" value="1">
                <label for="onePlusOneYes">Yes</label>
                <input type="radio" id="onePlusOneNo" name="onePlusOne" value="0" checked>
                <label for="onePlusOneNo">No</label></td>
            </tr>
            <tr><td>Upload Time : <input type="date" name="uploadTime"></td></tr>
            <tr><td>Expiration Date : <input type="date" name="expirationDate"></td></tr>
            <tr><td><a href="index.jsp">View All Records</a></td><td align="right"><input type="button" value="Cancel" onclick="history.back()"/></td>
                <td align="right"><input type="submit" value="수정하기"/></td></tr>
    </table>
</form:form>

</body>
</html>
