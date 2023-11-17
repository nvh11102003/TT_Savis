package com.example.asm.service.impl;

import com.example.asm.entities.HoaDon;
import com.example.asm.entities.HoaDonChiTiet;
import com.example.asm.entities.User;
import com.example.asm.repository.IHoaDonRepository;
import com.example.asm.service.IHoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public class HoaDonServiceImpl implements IHoaDonService {

    @Autowired
    IHoaDonRepository repository;


    @Override
    public HoaDon add(HoaDon hoaDon) {
        return repository.save(hoaDon);
    }

    @Override
    public HoaDon getByUser(User user) {
        return repository.getByUser(user);
    }

    @Override
    public BigDecimal tongTien(HoaDon hoaDon) {
        double tongTien = 0;
        List<HoaDonChiTiet> listHDCT = hoaDon.getListHDCT();
        for (HoaDonChiTiet hdct : listHDCT) {
            double thanhTien = hdct.getSoLuong() * Double.parseDouble(String.valueOf(hdct.getTuLanh().getDonGia()));
            tongTien += thanhTien;
        }
        return BigDecimal.valueOf(tongTien);
    }

    @Override
    public List<HoaDon> getAllByUser(User user) {
        return repository.findAllByUser(user);
    }

    @Override
    public HoaDon update(HoaDon hoaDon) {
        return repository.save(hoaDon);
    }

    @Override
    public List<HoaDon> viewAll() {
        return repository.findAll();
    }

    @Override
    public HoaDon getById(Integer id) {
        return repository.getReferenceById(id);
    }
}
