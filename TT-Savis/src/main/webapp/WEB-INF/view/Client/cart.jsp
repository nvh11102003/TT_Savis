<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>TU LANH</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="../../../resources/img/favicon.ico" rel="icon">

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
                <a class="text-body mr-3" href="">About</a>
                <a class="text-body mr-3" href="">Contact</a>
                <a class="text-body mr-3" href="">Help</a>
                <a class="text-body mr-3" href="">FAQs</a>
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
                <div class="btn-group mx-2">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle"
                            data-toggle="dropdown">USD
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <button class="dropdown-item" type="button">EUR</button>
                        <button class="dropdown-item" type="button">GBP</button>
                        <button class="dropdown-item" type="button">CAD</button>
                    </div>
                </div>
            </div>
            <div class="d-inline-flex align-items-center d-block d-lg-none">
                <a href="" class="btn px-0 ml-2">
                    <i class="fas fa-heart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle"
                          style="padding-bottom: 2px;"></span>
                </a>
                <a href="" class="btn px-0 ml-2">
                    <i class="fas fa-shopping-cart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle"
                          style="padding-bottom: 2px;"></span>
                </a>
            </div>
        </div>
    </div>
    <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
        <div class="col-lg-4">
            <a href=""><img src="../../../resources/img/logo.png" alt=""></a>
        </div>
        <div class="col-lg-4 col-6 text-left">
            <form action="/ASM/quan-ly-san-pham/search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search Tai Nghe Name">
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
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn d-flex align-items-center justify-content-between bg-light w-100" data-toggle="collapse"
               href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                <i class="fa fa-angle-down text-dark"></i>
            </a>
            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"
                 id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">

            </nav>
        </div>
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
                        <a href="/home" class="nav-item nav-link active">Checkout</a>
                        <div class="nav-item dropdown">
                        </div>
                        <!-- <a href="contact.jsp" class="nav-item nav-link">Contact</a> -->
                    </div>
                    <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- Navbar End -->


<!-- Breadcrumb Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-12">
            <nav class="breadcrumb bg-light mb-30">
                <a class="breadcrumb-item text-dark" href="#">Home</a>
                <span class="breadcrumb-item active">Shopping Cart</span>
            </nav>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->


<!-- Cart Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-lg-8 table-responsive mb-5">
            <table class="table table-light table-borderless table-hover text-center mb-0">
                <thead class="thead-dark">
                <tr>
                    <th>Sản Phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng</th>
                    <th>Xóa</th>
                </tr>
                </thead>
                <tbody class="align-middle">
                <c:forEach items="${cart}" var="c">
                    <tr>
                        <td class="align-middle">${c.ten}</td>
                        <td class="align-middle">${c.donGia}</td>
                        <td class="align-middle">
                            <div class="input-group quantity mx-auto" style="width: 100px;">
                                <div class="input-group-btn">
                                    <a href="/cart/${US.id}/giamSoLuong/${c.id}"
                                       class="btn btn-sm btn-primary btn-minus">
                                        <i class="fa fa-minus"></i>
                                    </a>
                                </div>
                                <input type="text"
                                       class="form-control form-control-sm bg-secondary border-0 text-center"
                                       value="${DSSP[c.id]}">
                                <div class="input-group-btn">
                                    <a href="/cart/${US.id}/tangSoLuong/${c.id}"
                                       class="btn btn-sm btn-primary btn-plus">
                                        <i class="fa fa-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </td>
                        <td class="align-middle">${c.donGia*DSSP[c.id]}</td>
                        <td class="align-middle">
                            <a href="/cart/${US.id}/xoaTaiNghe/${c.id}" class="btn btn-sm btn-danger"><i
                                    class="fa fa-times"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-lg-4">
            <h5 class="section-title position-relative text-uppercase mb-3"><span
                    class="bg-secondary pr-3">Giỏ Hàng</span></h5>
            <div class="bg-light p-30 mb-5">
                <div class="d-flex justify-content-between mb-3">
                    <h6>Subtotal</h6>
                    <h6>${tongTien} VND</h6>
                </div>
                <div class="d-flex justify-content-between">
                </div>
                <div class="pt-2">
                    <div class="d-flex justify-content-between mt-2">
                        <h5>Total</h5>
                        <h5>${tongTien} VND</h5>
                    </div>
                    <form action="/hoa-don/add/${US.id}" method="post">
                        <button class="btn btn-block btn-primary font-weight-bold my-3 py-3" type="submit">Xác nhận
                            thanh toán
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cart End -->


<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


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