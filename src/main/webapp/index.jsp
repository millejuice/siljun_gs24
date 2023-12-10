<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>GS</title>
</head>
<body>
<div class="store">
    <div class="navbar">
    <h1>주현이와 준영이의 마트</h1>
        <div class="dropdown">
            <button class="add-button" onclick="location.href='addpostform.jsp'">+</button>
        </div>
    </div>
    <div class="item" data-name="Item 1" data-price="$10.00" data-expiration="2024-01-01">
<%--        <img src="item1.jpg" alt="Item 1">--%>
    </div>
    <div class="item" data-name="Item 2" data-price="$15.00" data-expiration="2024-02-01">
<%--        <img src="item2.jpg" alt="Item 2">--%>
    </div>
    <div class="item" data-name="Item 1" data-price="$10.00" data-expiration="2024-01-01">
        <%--        <img src="item1.jpg" alt="Item 1">--%>
    </div>
</div>

</body>

<style>
    .navbar{
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 50px;
        background-color: rgba(82, 98, 245, 1);
        color: white;
    }
    .add-button {
        background-color: white;
        color: rgba(82, 98, 245, 1);
        padding: 10px 15px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border: none;
        border-radius: 5px;
    }


    .store {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .item {
        width: 150px;
        height: 150px;
        margin: 10px;
        position: relative;
        border: 1px solid #ddd;
        box-shadow: 0px 0px 5px #aaa;
    }

    .item img {
        width: 100%;
        height: 100%;
    }

    .item:hover::after {
        content: attr(data-name) " - " attr(data-price) " - Expires: " attr(data-expiration);
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        background-color: rgba(0, 0, 0, 0.7);
        color: white;
        text-align: center;
        padding: 5px;
        font-size: 0.8em;
    }
</style>
</html>

