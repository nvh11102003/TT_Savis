package com.example.asm.service;

import com.example.asm.entities.HoaDon;
import com.example.asm.entities.User;

import java.math.BigDecimal;
import java.util.List;

public interface IHoaDonService {
    HoaDon add(HoaDon hoaDon);

    HoaDon getByUser(User user);

    BigDecimal tongTien(HoaDon hoaDon);

    List<HoaDon> getAllByUser(User user);

    HoaDon update(HoaDon hoaDon);

    List<HoaDon> viewAll();

    HoaDon getById(Integer id);
}
