package com.example.asm.api.Admin;

import com.example.asm.entities.TuLanh;
import com.example.asm.service.ITuLanhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;

@Controller
@RequestMapping("/ASM/quan-ly-tu-lanh")
public class TuLanhController {

    private Page<TuLanh> pageTuLanh;

    @Autowired
    ITuLanhService tuLanhService;

    @PostMapping("/add")
    public String add(@Validated TuLanh tuLanh ,BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "redirect:/admin/quan-ly-tu-lanh";
        }
        tuLanhService.addTuLanh(tuLanh);
        return "redirect:/admin/quan-ly-tu-lanh";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable(name = "id") Integer id, @Validated TuLanh tuLanh, BindingResult result) {
        if (result.hasErrors()) {
            tuLanh.setId(id);
            return "redirect:/admin/quan-ly-tu-lanh";
        }
        tuLanhService.updateTuLanh(tuLanh);
        return "redirect:/admin/quan-ly-tu-lanh";
    }


    @GetMapping("/delete/{id}")
    public String delete(Model model, @PathVariable(name = "id") Integer id) {
        TuLanh tuLanh = tuLanhService.getById(id);
        tuLanhService.deleteTuLanh(tuLanh);
        return "redirect:/admin/quan-ly-tu-lanh";
    }

    @GetMapping("/view-update/{id}")
    public String ViewUpdate(Model model, @PathVariable(name = "id") Integer id) {
        TuLanh tuLanh = tuLanhService.getById(id);
        model.addAttribute("Detail", tuLanh);
        return "/Admin/update-tu-lanh";
    }

    @GetMapping("/view-update1/{id}")
    public String ViewUpdate1(Model model, @PathVariable(name = "id") Integer id) {
        TuLanh tuLanh = tuLanhService.getById(id);
        model.addAttribute("Detail", tuLanh);
        return "/Client/detail";
    }

    @GetMapping("/search")
    public String Search(Model model,@RequestParam(defaultValue = "1") int page,
                                    @RequestParam(required = false) String tenTaiNghe,
                                    @RequestParam(required = false) BigDecimal giaMin,
                                    @RequestParam(required = false) BigDecimal giaMax) {
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 10);
        if(tenTaiNghe == null) {
            pageTuLanh = tuLanhService.findByPriceBeetween(giaMin, giaMax, pageable);
        }else if (giaMax == null && giaMin == null) {
            pageTuLanh = tuLanhService.findByTen(tenTaiNghe, pageable);
        }else if(giaMin == null){
            pageTuLanh = tuLanhService.findByTenTaiNgheContainsAndDonGiaBefore(tenTaiNghe, giaMax, pageable);
        }else if(giaMax == null){
            pageTuLanh = tuLanhService.findByTenTaiNgheContainsAndDonGiaAfter(tenTaiNghe, giaMin, pageable);
        }else {
            pageTuLanh = tuLanhService.findByPriceAndTen(tenTaiNghe, giaMin, giaMax, pageable);
        }
        model.addAttribute("page", pageTuLanh);
        return "/admin/quan-ly-tu-lanh";
    }
}
