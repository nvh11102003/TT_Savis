package com.example.asm.service;

import com.example.asm.entities.HoaDon;
import com.example.asm.entities.HoaDonChiTiet;
import com.example.asm.entities.TuLanh;
import com.example.asm.viewmodel.ThongKe;

import java.util.List;

public interface IHoaDonChiTietService {
    HoaDonChiTiet getByTuLanhAndHoaDon(TuLanh tuLanh, HoaDon hoaDon);

    List<HoaDonChiTiet> getByHoaDon(HoaDon hoaDon);

    HoaDonChiTiet save(HoaDonChiTiet hoaDonChiTiet);

    void delete(HoaDonChiTiet hoaDonChiTiet);

    List<ThongKe> getTopTenBestSellingProducts();
}
