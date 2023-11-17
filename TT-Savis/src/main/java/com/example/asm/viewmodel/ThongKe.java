package com.example.asm.viewmodel;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Builder
public class ThongKe {
    private String sanPham;
    private Long soLuongBan;

    public ThongKe(String sanPham, Long soLuongBan) {
        this.sanPham = sanPham;
        this.soLuongBan = soLuongBan;
    }
}
