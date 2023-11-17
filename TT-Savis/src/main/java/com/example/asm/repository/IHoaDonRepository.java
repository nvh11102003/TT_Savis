package com.example.asm.repository;

import com.example.asm.entities.HoaDon;
import com.example.asm.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IHoaDonRepository extends JpaRepository<HoaDon, Integer> {
    HoaDon getByUser(User user);

    List<HoaDon > findAllByUser(User user);

}
