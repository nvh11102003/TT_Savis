<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
  <link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css'>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="<c:url value='/src/main/webapp/resources/css/admin.css' />" />
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/admin">Tu Lanh Shop - Trang Quản Trị</a>
        <a href="/admin/quan-ly-tu-lanh" class="navbar-brand">Tủ Lạnh</a>
        <a href="/admin/thong-ke" class="navbar-brand">Thống Kê</a>
        <a href="/hoa-don/view" class="navbar-brand">Hóa Đơn</a>
        <a href="/admin/thong-ke-ton" class="navbar-brand">Thống Kê Tồn</a>
        <a href="" class="navbar-brand">Nhân Viên</a>
      </div>
      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a href="/home" class="navbar-brand">Đăng xuất</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>