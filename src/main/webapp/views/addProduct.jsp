<%--
  Created by IntelliJ IDEA.
  User: manh
  Date: 1/7/2025
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm mới sản phẩm</title>
</head>
<body>
<h2>Thêm mới sản phẩm</h2>
<c:if test="${not empty error}">
    <p style="color:red">${error}</p>
</c:if>
<form action="ProductServlet" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="price">Price:</label>
    <input type="number" id="price" name="price" min="101" required><br><br>

    <label for="discount">Discount:</label>
    <select id="discount" name="discount" required>
        <option value="5%">5%</option>
        <option value="10%">10%</option>
        <option value="15%">15%</option>
        <option value="20%">20%</option>
    </select><br><br>

    <label for="stock">Stock:</label>
    <input type="number" id="stock" name="stock" min="11" required><br><br>

    <input type="submit" value="Add Product">
</form>
</body>
</html>


