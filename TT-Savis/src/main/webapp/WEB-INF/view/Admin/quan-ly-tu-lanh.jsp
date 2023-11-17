
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
    <form action="/ASM/quan-ly-tu-lanh/add" method="post">
        <div>
                    <div class="form-group">
                        <label for="usr">Ten:</label>
                        <input required="true" type="text" class="form-control" id="usr" name="ten">
                    </div>
                    <div class="form-group">
                        <label for="soLuongTon">So luong ton:</label>
                        <input required="true" type="text" class="form-control" id="soLuongTon"
                               name="soLuongTon">
                    </div>
                    <div class="form-group">
                        <label for="ds">Dung Tích:</label>
                        <input type="text" class="form-control" id="ds" name="dungTich">
                    </div>
                    <div class="form-group">
                        <label for="scc">So Canh Cua</label>
                        <select class="form-select" aria-label="Default select example" name="soCanhCua"
                                id="scc">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="dg">Don Gia(VND):</label>
                        <input required="true" type="text" class="form-control" id="dg" name="donGia">
                    </div>

                <center><button class="btn btn-success" data-bs-dismiss="modal" type="submit"
                        onclick="return confirmAction()">ADD
                </button></center>
        </div>
    </form>
    <br/>
    <form action="/ASM/quan-ly-tu-lanh/search">
        <div>
            <input type="search" class="form-control form-control" name="tenTaiNghe" placeholder="Ten Tai Nghe" value="${param.tenTaiNghe}"/>
            <input type="search" class="form-control form-control" name="giaMin" placeholder="Gia Min" value="${param.giaMin}"/>
            <input type="search" class="form-control form-control" name="giaMax" placeholder="Gia Max" value="${param.giaMax}">
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
        <br/>
    </form>
    <c:if test="${page.isEmpty()}">
        <h2>Not found any records!!!</h2>
    </c:if><br/>
    <c:if test="${not page.isEmpty()}">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Ten tai nghe</th>
                <th>So luong</th>
                <th>Dung Tich</th>
                <th>So Canh Cua</th>
                <th>Don gia</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${page.getContent()}" var="sp">
                <tr>
                    <td>${sp.id}</td>
                    <td>${sp.ten}</td>
                    <td>${sp.soLuong}</td>
                    <td>${sp.dungTich} L</td>
                    <td>${sp.soCanhCua}</td>
                    <td>${sp.donGia} VND</td>
                    <td>
                        <a href="/ASM/quan-ly-tu-lanh/delete/${sp.id}" class="btn btn-danger"
                           onclick="return confirmAction()">Remove</a>
                        <a href="/ASM/quan-ly-tu-lanh/view-update/${sp.id}" class="btn btn-primary">Detail Or
                            Update</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <form>
            <div>
                <ul class="pagination">
                    <li class="page-item">
                        <c:if test="${page.getNumber() + 1 > 1}">
                            <a class="page-link" href="?page=${page.getNumber()}&tenTaiNghe=${param.ten}">
                                Previous
                            </a>
                        </c:if>
                    </li>
                    <li class="page-item"><a class="page-link"> ${page.getNumber() + 1}</a></li>
                    <li class="page-item"><a class="page-link">/</a></li>
                    <li class="page-item"><a class="page-link"> ${page.getTotalPages()}</a></li>
                    <li class="page-item"><c:if test="${page.getNumber() + 1 lt page.getTotalPages()}">
                        <a class="page-link" href="?page=${page.getNumber() + 2}&ten=${param.ten}">
                            Next
                        </a>
                    </c:if>
                    </li>
                </ul>
            </div>
        </form>
    </c:if>
</div>
<script>
    function confirmAction() {
        return confirm("Bạn có chắc chắn muốn thực hiện thao tác này không?");
    }
</script>

<jsp:include page="template/footer.jsp"></jsp:include>

</body>

</html>

