<%--
  Created by IntelliJ IDEA.
  User: juhyun
  Date: 2023/12/11
  Time: 2:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<body>
<h1>View Form</h1>
<p>Name: ${list.itemName}</p>
<p>Stock:${list.stock}</p>
<p>Price: ${list.itemPrice}</p>
<p>Image: ${list.itemImage}</p>
<p>Upload Time: ${list.uploadTime}</p>
<p>Expiration Date: ${list.expirationDate}</p>
<p>1 + 1 ?: ${list.onePlusOne}</p>
<p><a href="../posts">마트로 돌아가기</a></p>
</body>
