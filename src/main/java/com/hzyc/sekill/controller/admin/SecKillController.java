package com.hzyc.sekill.controller.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hzyc.sekill.bean.CategoryBean;
import com.hzyc.sekill.bean.GoodsBean;
import com.hzyc.sekill.controller.BaseController;
import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.model.SecKill;
import com.hzyc.sekill.service.GoodsService;
import com.hzyc.sekill.service.SecKillService;
import com.hzyc.sekill.utils.PageQueryUtil;

@Controller
@RequestMapping("/admin/seckill")
public class SecKillController extends BaseController {
	@Resource(name="secKillService")
	private SecKillService secKillService;
	@Resource(name="goodsService")
	private GoodsService goodsService;
	@RequestMapping("/listAll.do")
	public ModelAndView listAllGoods(PageQueryUtil page) throws Exception{
		try {
			Map<String, Object> map = secKillService.findSecKillAll(page);
			return backView("/admin/seckill", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	@RequestMapping("/addPage.do")
	public String addPage() throws Exception{
		return "/admin/addSecKill";
	}
	
	@RequestMapping("/add.do")
	public String addSecKill(SecKill secKill) throws Exception{
		secKillService.addSecKill(secKill);
		return "redirect:/admin/seckill/listAll.do";
	}
	
	@ResponseBody
	@RequestMapping("/search.do")
	public List<GoodsBean> search(String str){
		List<Goods> list = goodsService.findGoodsByName(str);
		List<GoodsBean> gbList = new ArrayList<GoodsBean>();
		if(list != null){
			for(Goods g :list){
				gbList.add(new GoodsBean(g));
			}
		}
		return gbList;
	}
}
