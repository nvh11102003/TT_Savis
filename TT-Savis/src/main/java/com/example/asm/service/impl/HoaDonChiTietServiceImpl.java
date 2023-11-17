package com.example.asm.service.impl;

import com.example.asm.entities.HoaDon;
import com.example.asm.entities.HoaDonChiTiet;
import com.example.asm.entities.TuLanh;
import com.example.asm.repository.IHoaDonChiTietRepository;
import com.example.asm.service.IHoaDonChiTietService;
import com.example.asm.viewmodel.ThongKe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HoaDonChiTietServiceImpl implements IHoaDonChiTietService {

   @Autowired
    IHoaDonChiTietRepository repository;

    @Override
    public HoaDonChiTiet getByTuLanhAndHoaDon(TuLanh tuLanh, HoaDon hoaDon) {
        return repository.getByTuLanhAndHd(tuLanh,hoaDon);
    }

    @Override
    public List<HoaDonChiTiet> getByHoaDon(HoaDon hoaDon) {
        return repository.getByHd(hoaDon);
    }


    @Override
    public HoaDonChiTiet save(HoaDonChiTiet hoaDonChiTiet) {
        return repository.save(hoaDonChiTiet);
    }

    @Override
    public void delete(HoaDonChiTiet hoaDonChiTiet) {
        repository.delete(hoaDonChiTiet);
    }

    @Override
    public List<ThongKe> getTopTenBestSellingProducts() {
        List<Object[]> results = repository.findTop10TenBestSellingProducts();
        List<ThongKe> thongKeList = new ArrayList<>();

        for (Object[] result : results) {
            String sanPham = (String) result[0];
            Long soLuongBan = (Long) result[1];
            ThongKe thongKe = new ThongKe(sanPham, soLuongBan);
            thongKeList.add(thongKe);
        }
        return thongKeList;
    }
}
