<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <title>QUAN LI Tu Lanh</title>
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
<center><h2>Quan Li Tu Lanh</h2></center>
<form action="/ASM/tu-lanh/update/${Detail.id}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Tên</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" name="ten" value="${Detail.ten}"><br>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Số Lượng</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" name="soLuong" value="${Detail.soLuong}"><br>
        </div>
    </div>
    <br>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Don gia</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" name="donGia" value="${Detail.donGia}"><br>
        </div>
    </div>
    <a href="/client/${US.id}" class="btn btn-danger">Close</a>
</form>

</body>
<script>
    function confirmAction() {
        return confirm("Bạn có chắc chắn muốn thực hiện thao tác này không?");
    }
</script>
</html>