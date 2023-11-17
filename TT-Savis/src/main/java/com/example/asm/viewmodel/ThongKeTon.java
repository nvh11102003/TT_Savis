package com.example.asm.viewmodel;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Builder
public class ThongKeTon {
    private String sanPham;
    private Integer soLuongTon;

    public ThongKeTon(String sanPham, Integer soLuongTon) {
        this.sanPham = sanPham;
        this.soLuongTon = soLuongTon;
    }
}
