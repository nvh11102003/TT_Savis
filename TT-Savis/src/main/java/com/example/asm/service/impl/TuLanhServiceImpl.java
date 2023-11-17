package com.example.asm.service.impl;

import com.example.asm.entities.TuLanh;
import com.example.asm.repository.ITuLanhRepository;
import com.example.asm.service.ITuLanhService;
import com.example.asm.viewmodel.ThongKe;
import com.example.asm.viewmodel.ThongKeTon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Service
public class TuLanhServiceImpl implements ITuLanhService {

    @Autowired
    ITuLanhRepository repository;

    @Override
    public Page<TuLanh> getAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public TuLanh getById(Integer id) {
        return repository.getReferenceById(id);
    }

    @Override
    public void addTuLanh(TuLanh tn) {
        repository.save(tn);
    }

    @Override
    public void deleteTuLanh(TuLanh tn) {
        repository.delete(tn);
    }

    @Override
    public void updateTuLanh(TuLanh tn) {
        repository.save(tn);
    }

    @Override
    public Page<TuLanh> findByPriceBeetween(BigDecimal min, BigDecimal max, Pageable pageable) {
        return repository.findByDonGiaBetween(min, max, pageable);
    }

    @Override
    public Page<TuLanh> findByTen(String ten, Pageable pageable) {
        return repository.findByTenContains(ten, pageable);
    }

    @Override
    public Page<TuLanh> findByDonGiaMin(BigDecimal min, Pageable pageable) {
        return repository.findByDonGiaAfter(min, pageable);
    }

    @Override
    public Page<TuLanh> findByDonGiaMax(BigDecimal max, Pageable pageable) {
        return repository.findByDonGiaBefore(max, pageable);
    }

    @Override
    public Page<TuLanh> findByPriceAndTen(String ten, BigDecimal min, BigDecimal max, Pageable pageable) {
        return repository.findByTenContainsAndDonGiaBetween(ten, min, max, pageable);
    }

    @Override
    public Page<TuLanh> findByTenTaiNgheContainsAndDonGiaAfter(String ten, BigDecimal min, Pageable pageable) {
        return repository.findByTenContainsAndDonGiaAfter(ten, min, pageable);
    }

    @Override
    public Page<TuLanh> findByTenTaiNgheContainsAndDonGiaBefore(String ten, BigDecimal max, Pageable pageable) {
        return repository.findByTenContainsAndDonGiaBefore(ten, max, pageable);
    }

    @Override
    public List<ThongKeTon> thongke() {
        List<Object[]> results = repository.findTop10LongestStockedItems();
        List<ThongKeTon> thongKeList = new ArrayList<>();

        for (Object[] result : results) {
            String sanPham = (String) result[0];
            Integer soLuongTon = (Integer) result[1];
            ThongKeTon thongKe = new ThongKeTon(sanPham, soLuongTon);
            thongKeList.add(thongKe);
        }
        return thongKeList;
    }
}
