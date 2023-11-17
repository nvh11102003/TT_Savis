
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>QUAN LI TU Lanh </title>
    <script>
        function validate() {
            var ma = document.getElementById("ma");
            var ten = document.getElementById("ten");

            var valid = true;
            if (ma.value.length <= 0 || ten.value.length <= 0) {
                alert("không được để trống!");
                valid = false;
            }
            return valid;
        };
    </script>
</head>

<body>
<jsp:include page="template/header.jsp"></jsp:include>
<jsp:include page="template/sidebar.jsp"></jsp:include>
<br/><br/><br/><br/>
<div class="container">
    <h2 align="center">Quan Ly Tu Lanh</h2><br/>
    <br/><br/>
    <c:if test="${page.isEmpty()}">
        <h2>Not found any records!!!</h2>
    </c:if><br/>
    <c:if test="${not page.isEmpty()}">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Tình Trang</th>
                <th>Id Hoa don</th>
                <th>Ngay Tao</th>
                <th>Dia chi</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${hoaDon}" var="sp">
                <tr>
                    <td>${sp.id}</td>
                    <td>${sp.tinhTrang}</td>
                    <td>${sp.ngayTao}</td>
                    <td>${sp.nguoiNhan}</td>
                    <td>${sp.diaChi}</td>
                    <td>
                        <a href="/hoa-don/hoadonchitiet/${sp.id}">Detail</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>

<jsp:include page="template/footer.jsp"></jsp:include>

</body>

</html>

