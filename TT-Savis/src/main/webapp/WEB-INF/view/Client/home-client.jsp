<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>TU LANH </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Link Angularjs -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../../../resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="../../../resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../../../resources/css/style.css" rel="stylesheet">

</head>

<body>

<!-- Topbar Start -->
<div class="container-fluid">
    <div class="row bg-secondary py-1 px-xl-5">
        <div class="col-lg-6 d-none d-lg-block">
            <div class="d-inline-flex align-items-center h-100">
            </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">${US.ten}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="/edit-user-view/${US.id}" class="dropdown-item" type="button">Edit</a>
                        <a href="/view-update-pass/${US.id}" class="dropdown-item" type="button">Change Password</a>
                        <a href="/home" class="dropdown-item" type="button">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
        <div class="col-lg-4 col-6 text-left">
            <form action="/ASM/quan-ly-san-pham/search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search Tu Lanh Name">
                    <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i type="submit" class="fa fa-search"></i>
                            </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-4 col-6 text-right">
        </div>
    </div>
</div>
<!-- Topbar End -->

<!-- Navbar Start -->
<div class="container-fluid bg-dark mb-30">
    <div class="row px-xl-5">
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span>
                    <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="/client/${US.id}" class="nav-item nav-link active">Home</a>
                        <a href="/cart/${US.id}" class="nav-item nav-link active">Shopping Cart</a>
                        <a href="/hoa-don/${US.id}" class="nav-item nav-link active">Hóa Đơn</a>
                        <a href="/home" class="nav-item nav-link active">Checkout</a>
<%--                        <div class="nav-item dropdown">--%>
<%--                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i--%>
<%--                                    class="fa fa-angle-down mt-1"></i></a>--%>
<%--                            <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">--%>
<%--                              --%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <!-- <a href="contact.jsp" class="nav-item nav-link">Contact</a> -->
                    </div>
                    <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                        <a href="/cart/${US.id}" class="btn px-0">
                            <i class="fas fa-heart text-primary"></i>
                            <span class="badge text-secondary border border-secondary rounded-circle"
                                  style="padding-bottom: 2px;"></span>
                        </a>
                        <a href="" class="btn px-0 ml-3">
                            <i class="fas fa-shopping-cart text-primary"></i>
                            <span class="badge text-secondary border border-secondary rounded-circle"
                                  style="padding-bottom: 2px;"></span>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- Navbar End -->

<div>
    <form action="/ASM/tu-lanh/search">
        <div class="input-group">
            <input type="search" name="giaMin" class="form-control rounded" placeholder="Gia Min" aria-label="Search"
                   aria-describedby="search-addon" value="${param.giaMin}"/>
            <input type="search" name="giaMax" class="form-control rounded" placeholder="Gia Max" aria-label="Search"
                   aria-describedby="search-addon" value="${param.giaMax}"/>
            <button type="submit" class="btn btn-outline-primary">Search</button>
        </div>
        <br/>
    </form>
    <br/><br/>
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
                <th>Tan so</th>
                <th>Cong ket Noi</th>
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
                    <td>${sp.dungTich} Hz</td>
                    <td>${sp.soCanhCua}</td>
                    <td>${sp.donGia} VND</td>
                    <td>
                        <a href="/cart/${US.id}/add-tu-lanh/${sp.id}" class="btn btn-danger">Add to Cart</a>
                        <a href="/ASM/quan-ly-tu-lanh/view-update1/${sp.id}" class="btn btn-primary">Detail</a>
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
                            <a class="page-link" href="?page=${page.getNumber()}&ten=${param.ten}">
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

<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


<!-- test js -->
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="../../../resources/lib/easing/easing.min.js"></script>
<script src="../../../resources/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="../../../resources/mail/jqBootstrapValidation.min.js"></script>
<script src="../../../resources/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="../../../resources/js/main.js"></script>
</body>

</html>