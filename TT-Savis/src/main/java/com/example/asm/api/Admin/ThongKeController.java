package com.example.asm.api.Admin;

import com.example.asm.service.IHoaDonChiTietService;
import com.example.asm.service.impl.TuLanhServiceImpl;
import com.example.asm.viewmodel.ThongKe;
import com.example.asm.viewmodel.ThongKeTon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping
public class ThongKeController {

    @Autowired
    IHoaDonChiTietService hoaDonChiTietService;

    @Autowired
    TuLanhServiceImpl taiNgheService;

    @GetMapping("/thongke")
    public ResponseEntity<List<ThongKe>> getThongKe() {
        List<ThongKe> thongKeList = hoaDonChiTietService.getTopTenBestSellingProducts();
        return ResponseEntity.ok(thongKeList);
    }

    @GetMapping("/thongketon")
    public ResponseEntity<List<ThongKeTon>> getThongKeTon() {
        List<ThongKeTon> thongKeList = taiNgheService.thongke();
        return ResponseEntity.ok(thongKeList);
    }
}
