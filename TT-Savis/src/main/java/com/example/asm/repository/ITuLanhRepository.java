package com.example.asm.repository;

import com.example.asm.entities.TuLanh;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.math.BigDecimal;
import java.util.List;

public interface ITuLanhRepository extends JpaRepository<TuLanh, Integer> {
    Page<TuLanh> findByDonGiaBetween(BigDecimal giaMin, BigDecimal giaMax, Pageable pageable);

    Page<TuLanh> findByTenContains(String ten, Pageable pageable);

    Page<TuLanh> findByDonGiaAfter(BigDecimal min, Pageable pageable);

    Page<TuLanh> findByDonGiaBefore(BigDecimal max, Pageable pageable);

    Page<TuLanh> findByTenContainsAndDonGiaAfter(String ten, BigDecimal min, Pageable pageable);

    Page<TuLanh> findByTenContainsAndDonGiaBefore(String ten, BigDecimal max, Pageable pageable);

    Page<TuLanh> findByTenContainsAndDonGiaBetween(String ten, BigDecimal giaMin, BigDecimal giaMax, Pageable pageable);

    // Lấy ra danh sách 10 mặt hàng lâu nhất
    @Query("SELECT p.ten, p.soLuong FROM TuLanh p ORDER BY p.soLuong DESC LIMIT 10 ")
    List<Object[]> findTop10LongestStockedItems();
}
