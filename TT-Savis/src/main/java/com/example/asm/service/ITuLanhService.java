package com.example.asm.service;

import com.example.asm.entities.TuLanh;
import com.example.asm.viewmodel.ThongKe;
import com.example.asm.viewmodel.ThongKeTon;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;

public interface ITuLanhService {

    Page<TuLanh> getAll(Pageable pageable);

    TuLanh getById(Integer id);

    void addTuLanh(TuLanh tuLanh);

    void deleteTuLanh(TuLanh tuLanh);

    void updateTuLanh(TuLanh tuLanh);

    Page<TuLanh> findByPriceBeetween(BigDecimal min, BigDecimal max, Pageable pageable);

    Page<TuLanh> findByTen(String ten, Pageable pageable);

    Page<TuLanh> findByDonGiaMin(BigDecimal min, Pageable pageable);

    Page<TuLanh> findByDonGiaMax(BigDecimal max, Pageable pageable);

    Page<TuLanh> findByPriceAndTen(String ten, BigDecimal min, BigDecimal max, Pageable pageable);

    Page<TuLanh> findByTenTaiNgheContainsAndDonGiaAfter(String ten, BigDecimal min, Pageable pageable);

    Page<TuLanh> findByTenTaiNgheContainsAndDonGiaBefore(String ten, BigDecimal min, Pageable pageable);

    List<ThongKeTon> thongke();

}
