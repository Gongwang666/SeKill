package com.hzyc.sekill.controller.admin;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hzyc.sekill.controller.BaseController;
import com.hzyc.sekill.service.GoodsService;
import com.hzyc.sekill.utils.PageQueryUtil;

@Controller
@RequestMapping("/admin/goods")
public class GoodsController extends BaseController{
	@Resource(name="goodsService")
	private GoodsService goodsService;
	
	@RequestMapping("/listAll.do")
	public ModelAndView listAllGoods(PageQueryUtil page) throws Exception{
		try {
			Map<String, Object> map = goodsService.findGoodsAll(page);
			return backView("/admin/goods", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@RequestMapping("/addPage.do")
	public String addPage(Model model) throws Exception{
		return "/admin/addGoods";
	}
}
