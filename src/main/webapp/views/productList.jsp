<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách sản phẩm</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        button {
            margin: 5px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h2>Danh sách sản phẩm</h2>
<button onclick="location.href='addProduct.jsp'">Thêm mới</button>
<button onclick="location.href='topProducts.jsp'">Danh sách top sản phẩm bán chạy nhất</button>
<form action="filterProducts" method="get">
    <label for="startDate">Danh sách sản phẩm được đặt từ:</label>
    <input type="date" id="startDate" name="startDate">
    <label for="endDate">đến:</label>
    <input type="date" id="endDate" name="endDate">
    <button type="submit">Xem</button>
</form>
<table>
    <tr>
        <th>STT</th>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
        <th>Giảm giá</th>
        <th>Tồn kho</th>
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td>${product.productId}</td>
            <td>${product.productName}</td>
            <td>${product.price}</td>
            <td>${product.discount}</td>
            <td>${product.stock}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
