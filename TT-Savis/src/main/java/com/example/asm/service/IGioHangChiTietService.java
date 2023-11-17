package com.example.asm.service;

import com.example.asm.entities.GioHang;
import com.example.asm.entities.GioHangChiTiet;
import com.example.asm.entities.TuLanh;

import java.math.BigDecimal;
import java.util.List;

public interface IGioHangChiTietService {

    List<GioHangChiTiet> getByGh(GioHang gh);

    GioHangChiTiet getByTuLanhAndGh(TuLanh tuLanh, GioHang gh);

    GioHangChiTiet saveGHCT(GioHangChiTiet ghct);

    void deleteGHCT(GioHangChiTiet ghct);

}
