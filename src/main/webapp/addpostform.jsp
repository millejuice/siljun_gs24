<%--
  Created by IntelliJ IDEA.
  User: juhyun
  Date: 2023/12/10
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Item</h1>
<form action="addok" method="post">
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
        <tr><td><a href="posts">View All Records</a></td><td align="right"><input type="button" value="Cancel" onclick="history.back()"/></td>
            <td align="right"><input type="submit" value="Add Post"/></td></tr>
    </table>
</form>

</body>
</html>
