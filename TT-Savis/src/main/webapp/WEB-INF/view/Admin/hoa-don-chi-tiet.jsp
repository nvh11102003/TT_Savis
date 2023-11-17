<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <title>QUAN LI Tu Lanh</title>
</head>
<body>
<center><h2>Quan Li Tu Lanh</h2></center>
<form>
    <div>
        <table class="table table-light table-borderless table-hover text-center mb-0">
            <thead class="thead-dark">
            <tr>
                <th>STT</th>
                <th>Sản Phẩm</th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Tổng</th>
            </tr>
            </thead>
            <tbody class="align-middle">
            <c:forEach items="${hoaDon}" var="c" varStatus="stt">
                <tr>
                    <td class="align-middle">${stt.index+1}</td>
                    <td class="align-middle">${c.ten}</td>
                    <td class="align-middle">${c.donGia}</td>
                    <td class="align-middle">${DSSP[c.id]}</td>
                    <td class="align-middle">${c.donGia*DSSP[c.id]}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div>
        <a href="/admin" class="btn btn-danger">Close</a>
    </div>
</form>

</body>
</html>