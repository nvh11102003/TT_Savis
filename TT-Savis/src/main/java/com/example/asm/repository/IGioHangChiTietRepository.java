package com.example.asm.repository;

import com.example.asm.entities.GioHang;
import com.example.asm.entities.GioHangChiTiet;
import com.example.asm.entities.TuLanh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface IGioHangChiTietRepository extends JpaRepository<GioHangChiTiet, Integer> {
    GioHangChiTiet getByTuLanhAndGh(TuLanh tuLanh, GioHang gh);

    List<GioHangChiTiet> getByGh(GioHang gh);

}
