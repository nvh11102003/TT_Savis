<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Tu Lanh Shop</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Link Angularjs -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

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
            </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">${US.ten}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="/edit-user-view/${US.id}" class="dropdown-item" type="button">Cập nhập tài khoản</a>
                        <a href="/view-update-pass/${US.id}" class="dropdown-item" type="button">Đổi mật khẩu</a>
                        <a href="/home" class="dropdown-item" type="button">Logout</a>
                    </div>
                </div>
                <div class="btn-group mx-2">

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
        </div>
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
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn d-flex align-items-center justify-content-between bg-light w-100" data-toggle="collapse"
               href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i></h6>
                <i class="fa fa-angle-down text-dark"></i>
            </a>
            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"
                 id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                <div class="navbar-nav w-100">
                </div>
            </nav>
        </div>
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="/client/${US.id}" class="nav-item nav-link active">Home</a>
                        <a href="/cart/${US.id}" class="nav-item nav-link active">Giỏ hàng</a>
                        <a href="/hoa-don/${US.id}" class="nav-item nav-link active">Hóa Đơn</a>
                        <a href="/home" class="nav-item nav-link active">Đăng xuất</a>
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
                <span class="breadcrumb-item active">Hóa đơn chi tiết</span>
            </nav>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->


<!-- Cart Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class=" table-responsive ">
            <table class="table table-light table-borderless table-hover text-center ">
                <thead class="thead-dark">
                <tr>
                    <th>STT</th>
                    <th>Tên người mua</th>
                    <th>Ngày tạo</th>
                    <th>Trạng thái</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody class="align-middle">

                <c:forEach items="${listHD}" var="c" varStatus="stt">
                    <tr>
                        <td class="align-middle">${stt.index+1}</td>
                        <td class="align-middle">${c.nguoiNhan}</td>
                        <td class="align-middle">${c.ngayTao}</td>
                        <td class="align-middle">${c.tinhTrang}</td>
                        <td class="align-middle">
                            <a href="/hoa-don/detailCT/${US.id}" class="btn btn-primary" data-bs-toggle="modal"
                               data-bs-target="#ModalDetail">Detail
                            </a>
                            <form action="/hoa-don/update-hoa-don/${US.id}" method="post">
                                <button class="btn btn-darger">Thanh toan</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <%--    detail--%>
    <div class="modal" id="ModalDetail">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Hoá đơn chi tiết</h4>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
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
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
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