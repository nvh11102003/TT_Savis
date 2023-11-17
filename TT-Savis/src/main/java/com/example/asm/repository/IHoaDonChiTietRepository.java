package com.example.asm.repository;

import com.example.asm.entities.HoaDon;
import com.example.asm.entities.HoaDonChiTiet;
import com.example.asm.entities.TuLanh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface IHoaDonChiTietRepository extends JpaRepository<HoaDonChiTiet, Integer> {
    HoaDonChiTiet getByTuLanhAndHd(TuLanh tuLanh, HoaDon hoaDon);

    List<HoaDonChiTiet> getByHd(HoaDon hoaDon);

    @Query("SELECT hdct.tuLanh.ten, SUM(hdct.soLuong) AS totalQuantity " +
            "FROM HoaDonChiTiet hdct " +
            "GROUP BY hdct.tuLanh.ten " +
            "ORDER BY totalQuantity DESC LIMIT 10")
    List<Object[]> findTop10TenBestSellingProducts();

    List<HoaDonChiTiet> findByHdId(Integer id);
}
