package com.example.asm.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.math.BigDecimal;

@Entity
@Table(name = "tulanh")
public class TuLanh {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ten")
    private String ten;

    @Column(name = "soluongton")
    private int soLuong;

    @Column(name = "dungtich")
    private int dungTich;

    @Column(name = "dongia")
    private BigDecimal donGia;

    @Column(name = "socanhcua")
    private int soCanhCua;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public int getDungTich() {
        return dungTich;
    }

    public void setDungTich(int dungTich) {
        this.dungTich = dungTich;
    }

    public BigDecimal getDonGia() {
        return donGia;
    }

    public void setDonGia(BigDecimal donGia) {
        this.donGia = donGia;
    }

    public int getSoCanhCua() {
        return soCanhCua;
    }

    public void setSoCanhCua(int soCanhCua) {
        this.soCanhCua = soCanhCua;
    }

    public TuLanh(Integer id, String ten, int soLuong, int dungTich, BigDecimal donGia, int soCanhCua) {
        this.id = id;
        this.ten = ten;
        this.soLuong = soLuong;
        this.dungTich = dungTich;
        this.donGia = donGia;
        this.soCanhCua = soCanhCua;
    }

    public TuLanh() {
    }


}
