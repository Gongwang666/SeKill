package com.hzyc.sekill.controller.jdms;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.model.SecKill;
import com.hzyc.sekill.service.GoodsService;
import com.hzyc.sekill.service.MSService;

/**
 * @author 龚旺
 *
 */
@Controller
@RequestMapping("/ms/show")
public class MSController {
	@Resource(name="MSService")
	private MSService msService;
	@Resource(name="goodsService")
	private GoodsService goodsService;
	/** 
	* @Title: toMSPage 
	* @Description: 跳转到秒杀页面
	* @param @param model
	* @param @return    入参
	* @return String    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月24日 上午10:53:40 
	* @version V1.0   
	*/
	@RequestMapping("/toMSPage.do")
	public String toMSPage(Model model){
		List<SecKill> list = msService.findSecKillByTime(msService.getMysqlTime());
		model.addAttribute("list", list);
		return "/jdms/jdms";
	}
	
	/** 
	* @Title: showGoods 
	* @Description: 跳转到商品详情页面
	* @param  商品id
	* @return String    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月24日 上午10:56:07 
	* @version V1.0   
	 * @throws Exception 
	*/
	@RequestMapping("/showGoods.do")
	public String showGoods(int gid,Model model) throws Exception{
		Goods goods = goodsService.findGoodsByID(gid);
		model.addAttribute("goods", goods);
		return "/jdms/baobei";
	}
}
