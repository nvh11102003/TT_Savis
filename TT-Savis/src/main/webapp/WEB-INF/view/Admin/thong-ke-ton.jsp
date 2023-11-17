<%--&lt;%&ndash;<!-- Hiển thị kết quả lấy từ API -->&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul id="thongKeList"></ul>&ndash;%&gt;--%>

<%--&lt;%&ndash;<!-- Gọi API bằng JavaScript -->&ndash;%&gt;--%>
<%--&lt;%&ndash;<script>&ndash;%&gt;--%>
<%--&lt;%&ndash;    fetch('/thongketon')&ndash;%&gt;--%>
<%--&lt;%&ndash;        .then(response => response.json())&ndash;%&gt;--%>
<%--&lt;%&ndash;        .then(data => {&ndash;%&gt;--%>
<%--&lt;%&ndash;            const thongKeList = document.querySelector('#thongKeList');&ndash;%&gt;--%>
<%--&lt;%&ndash;            data.forEach(thongKe => {&ndash;%&gt;--%>
<%--&lt;%&ndash;                const li = document.createElement('li');&ndash;%&gt;--%>
<%--&lt;%&ndash;                li.innerText = `${product.ten} - ${product.soluongton}`;&ndash;%&gt;--%>
<%--&lt;%&ndash;                thongKeList.appendChild(li);&ndash;%&gt;--%>
<%--&lt;%&ndash;            })&ndash;%&gt;--%>
<%--&lt;%&ndash;        });&ndash;%&gt;--%>
<%--&lt;%&ndash;</script>&ndash;%&gt;--%>
<%--<!-- Thư viện jQuery -->--%>
<%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>

<%--<script src="https://www.gstatic.com/charts/loader.js"></script>--%>
<%--<div id="myChart"></div>--%>
<%--<script>--%>
<%--    // Gọi API để lấy dữ liệu thống kê tồn--%>
<%--    google.charts.load('current', {packages: ['corechart']});--%>

<%--    $.ajax({--%>
<%--        url: "/thongketon",--%>
<%--        type: "GET",--%>
<%--        dataType: "json",--%>
<%--        success: function(result) {--%>
<%--            // Hiển thị biểu đồ sơ đồ cột với dữ liệu thống kê được trả về--%>
<%--            google.charts.load('current', {'packages':['corechart']});--%>
<%--            google.charts.setOnLoadCallback(drawChart);--%>

<%--            function drawChart() {--%>
<%--                var data = google.visualization.arrayToDataTable([--%>
<%--                    ['Tên sản phẩm', 'Số lượng tồn'],--%>
<%--                    ...result.map(item => [item.ten, item.soLuongTon])--%>
<%--                ]);--%>

<%--                var options = {--%>
<%--                    title: 'Thống kê tồn kho sản phẩm',--%>
<%--                    width: 600,--%>
<%--                    height: 400--%>
<%--                };--%>
<%--                var chart = new google.visualization.ColumnChart(document.getElementById('myChart'));--%>
<%--                chart.draw(data, options);--%>
<%--            }--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>THONG KE</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<br/><br/>

<canvas id="myChart"></canvas>

</body>
<script>
    $(document).ready(function() {
        $.get("/thongketon", function(data) {
            var labels = [], values = [];
            $.each(data, function(index, thongKeTon) {
                labels.push(thongKeTon.sanPham);
                values.push(thongKeTon.soLuongTon);
            });

            var ctx = document.getElementById('myChart').getContext('2d');
            var chart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Số lượng sản phẩm tồn nhiều nhất',
                        data: values,
                        backgroundColor: 'rgba(255, 0, 0, 0.2)',
                        borderColor: 'rgba(255, 0, 0, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
        });
    });
</script>
</html>