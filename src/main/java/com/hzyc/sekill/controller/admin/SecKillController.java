package com.hzyc.sekill.controller.admin;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hzyc.sekill.controller.BaseController;
import com.hzyc.sekill.service.SecKillService;
import com.hzyc.sekill.utils.PageQueryUtil;

@Controller
@RequestMapping("/admin/seckill")
public class SecKillController extends BaseController {
	@Resource(name="secKillService")
	private SecKillService secKillService;
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
}
