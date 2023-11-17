package com.example.asm.api.Admin;


import com.example.asm.entities.GioHang;
import com.example.asm.entities.GioHangChiTiet;
import com.example.asm.entities.HoaDon;
import com.example.asm.entities.HoaDonChiTiet;
import com.example.asm.entities.TuLanh;
import com.example.asm.entities.User;
import com.example.asm.repository.IHoaDonChiTietRepository;
import com.example.asm.service.IGioHangChiTietService;
import com.example.asm.service.IGioHangService;
import com.example.asm.service.impl.GioHangChiTietServiceImpl;
import com.example.asm.service.impl.GioHangServiceImpl;
import com.example.asm.service.impl.HoaDonChiTietServiceImpl;
import com.example.asm.service.impl.HoaDonServiceImpl;
import com.example.asm.service.impl.TuLanhServiceImpl;
import com.example.asm.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("hoa-don")
public class HoaDonController {

    @Autowired
    GioHangServiceImpl gioHangService;

    @Autowired
    GioHangChiTietServiceImpl gioHangChiTietService;

    @Autowired
    UserServiceImpl userService;

    @Autowired
    HoaDonServiceImpl hoaDonService;

    @Autowired
    IHoaDonChiTietRepository repository;

    @Autowired
    TuLanhServiceImpl tuLanhService;

    @Autowired
    HoaDonChiTietServiceImpl hoaDonChiTietService;

    @GetMapping("/{id}")
    public String hoaDonView(@PathVariable(name = "id") Integer id, Model model) {
        Map<Integer, Integer> DSSP = new HashMap<>();
        List<TuLanh> listTN = new ArrayList<>();
        User user = userService.getById(id);
        model.addAttribute("US", user);
        List<HoaDon> listhd = hoaDonService.getAllByUser(user);

        for (HoaDon hd : listhd) {
            List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHoaDon(hd);
            for (HoaDonChiTiet hdct : listHDCT) {
                listTN.add(hdct.getTuLanh());
                DSSP.put(hdct.getTuLanh().getId(), hdct.getSoLuong());
            }
            BigDecimal tongTien = hoaDonService.tongTien(hd);
            model.addAttribute("listHD", listhd);
            model.addAttribute("tongTien", tongTien);
            model.addAttribute("hoaDon", listTN);
            model.addAttribute("DSSP", DSSP);
        }
        return "/Client/hoa-don";
    }

    @GetMapping("/detailCT/{id}")
    public String hoaDonchitietView(@PathVariable(name = "id") Integer id, Model model) {
        Map<Integer, Integer> DSSP = new HashMap<>();
        List<TuLanh> listTN = new ArrayList<>();
        User user = userService.getById(id);
        model.addAttribute("US", user);
        List<HoaDon> listHD = hoaDonService.getAllByUser(user);
        for (HoaDon hd : listHD) {
            if (hd.getTinhTrang().equals("Chua thanh toan")) {
                List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHoaDon(hd);
                for (HoaDonChiTiet hdct : listHDCT) {
                    listTN.add(hdct.getTuLanh());
                    DSSP.put(hdct.getTuLanh().getId(), hdct.getSoLuong());
                }
                BigDecimal tongTien = hoaDonService.tongTien(hd);
                model.addAttribute("lishHD", listHD);
                model.addAttribute("tongTien", tongTien);
                model.addAttribute("hoaDon", listTN);
                model.addAttribute("DSSP", DSSP);
            }
        }
        return "/Client/hoa-don";
    }

    @PostMapping("/update-hoa-don/{id}")
    public String updateHD(Model model, @PathVariable(name = "id") Integer id, @Validated HoaDon hoaDon,
                           @Validated TuLanh tuLanh,
                           BindingResult result) {
        User user = userService.getById(id);
        model.addAttribute("US", user);
        List<HoaDon> listhd = hoaDonService.getAllByUser(user);
        for (HoaDon hd1 : listhd) {
            if (result.hasErrors()) {
                hoaDon.setId(hd1.getId());
                return "redirect:/hoa-don/{id}";
            }
            //update hoa don
            hoaDon.setTinhTrang("Da Thanh toan");
            hoaDon.setUser(user);
            hoaDon.setId(hd1.getId());
            hoaDon.setNgayTao(hd1.getNgayTao());
            hoaDon.setNguoiNhan(hd1.getNguoiNhan());
            hoaDon.setDiaChi(hd1.getDiaChi());
            hoaDonService.update(hoaDon);
        }
        //xoa gh
        GioHang gh = gioHangService.getByUser(user);
        List<GioHangChiTiet> listGHCT = gioHangChiTietService.getByGh(gh);
        for (GioHangChiTiet ghct : listGHCT) {
            gioHangChiTietService.deleteGHCT(ghct);
        }
//        xoa so luong sp
        List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHoaDon(hoaDon);
        for (HoaDonChiTiet hdct : listHDCT) {
            TuLanh tl = hdct.getTuLanh();
            if (result.hasErrors()) {
                tl.setId(tl.getId());
                return "redirect:/hoa-don/{id}";
            }
            tl.setSoLuong(tl.getSoLuong() - hdct.getSoLuong());
            tl.setId(tl.getId());
            tl.setDonGia(tl.getDonGia());
            tl.setDungTich(tl.getDungTich());
            tl.setTen(tl.getTen());
            tl.setSoCanhCua(tl.getSoCanhCua());
            tuLanhService.updateTuLanh(tl);
        }
        return "redirect:/client/{id}";
    }

    @PostMapping("/add/{id}")
    public String addHD(@PathVariable(name = "id") Integer id, Model model) {
        Map<Integer, Integer> DSSP = new HashMap<>();
        List<TuLanh> listTN = new ArrayList<>();
        User user = userService.getById(id);
        model.addAttribute("US", user);
        GioHang gh = gioHangService.getByUser(user);
        List<GioHangChiTiet> listGHCT = gioHangChiTietService.getByGh(gh);
        List<HoaDon> listHD = hoaDonService.getAllByUser(user);
        HoaDon hd = new HoaDon();
        hd.setUser(user);
        Date date = new Date();
        hd.setNgayTao(date);
        hd.setDiaChi(user.getDiaChi());
        hd.setNguoiNhan(user.getTen());
        hd.setTinhTrang("Chua thanh toan");
        hd = hoaDonService.add(hd);

        for (GioHangChiTiet ghct : listGHCT) {
            HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
            hoaDonChiTiet.setTuLanh(ghct.getTuLanh());
            hoaDonChiTiet.setHd(hd);
            hoaDonChiTiet.setDonGia(gioHangService.tongTien(gh));
            hoaDonChiTiet.setSoLuong(ghct.getSoLuong());

            hoaDonChiTietService.save(hoaDonChiTiet);
        }

        List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHoaDon(hd);
        for (HoaDonChiTiet hdct : listHDCT) {
            listTN.add(hdct.getTuLanh());
            DSSP.put(hdct.getTuLanh().getId(), hdct.getSoLuong());
        }


        BigDecimal tongTien = gioHangService.tongTien(gh);
        model.addAttribute("lishHD", listHD);
        model.addAttribute("tongTien", tongTien);
        model.addAttribute("hoaDon", listTN);
        model.addAttribute("DSSP", DSSP);

        return "redirect:/hoa-don/{id}";
    }

    @GetMapping("/view")
    public String viewAll(Model model) {
        List<HoaDon> hoaDon = hoaDonService.viewAll();
        model.addAttribute("hoaDon", hoaDon);
        return "Admin/hoadon";
    }

    @GetMapping("/hoadonchitiet/{id}")
    public String viewAllHDCT(Model model, @PathVariable(name = "id") Integer id) {
        Map<Integer, Integer> DSSP = new HashMap<>();
        List<TuLanh> listTN = new ArrayList<>();
        HoaDon hoaDon = hoaDonService.getById(id);
        List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHoaDon(hoaDon);
        for (HoaDonChiTiet hdct : listHDCT) {
            listTN.add(hdct.getTuLanh());
            DSSP.put(hdct.getTuLanh().getId(), hdct.getSoLuong());
        }
        model.addAttribute("hoaDon", listTN);
        model.addAttribute("DSSP", DSSP);
//        model.addAttribute("hdct", listHDCT);
        return "Admin/hoa-don-chi-tiet";
    }
}
