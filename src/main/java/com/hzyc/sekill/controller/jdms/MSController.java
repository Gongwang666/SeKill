package com.hzyc.sekill.controller.jdms;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hzyc.sekill.bean.CartBean;
import com.hzyc.sekill.bean.GoodsBean;
import com.hzyc.sekill.bean.MessageBean;
import com.hzyc.sekill.controller.BaseController;
import com.hzyc.sekill.dto.Exposer;
import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.model.SecKill;
import com.hzyc.sekill.model.User;
import com.hzyc.sekill.service.CartService;
import com.hzyc.sekill.service.GoodsService;
import com.hzyc.sekill.service.MSService;
import com.hzyc.sekill.utils.Constrants;

/**
 * @author 龚旺
 *
 */
@Controller
@RequestMapping("/ms/show")
public class MSController extends BaseController{
	@Resource(name="MSService")
	private MSService msService;
	@Resource(name="goodsService")
	private GoodsService goodsService;
	@Resource(name="cartService")
	private CartService cartService;
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
	* @Title: toCartPage 
	* @Description: TODO(跳转到购物车页面) 
	* @param @param model
	* @param @return    入参
	* @return String    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月29日 上午10:01:07 
	* @version V1.0   
	*/
	@RequestMapping("/toCartPage.do")
	public String toCartPage(Model model){
		User user = (User) getSession().getAttribute(Constrants.LOGIN_USER);
		CartBean cart = cartService.getCart(user);
		/*for(GoodsBean gb :cart.getList()){
			System.out.println(gb);
		}*/
		model.addAttribute("cartList", cart);
		return "/jdms/cart";
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
		Exposer exposer = msService.exportSecKillUrl(4);
		msService.successKilled();
		return "/jdms/baobei";
	}
	
	/** 
	* @Title: addToCart 
	* @Description: TODO(将商品添加到购物车) 
	* @param @param gid
	* @param @return
	* @param @throws Exception    入参
	* @return MessageBean    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月29日 上午10:00:22 
	* @version V1.0   
	*/
	@ResponseBody
	@RequestMapping("/addToCart.do")
	public MessageBean addToCart(int gid,int count) throws Exception{
		MessageBean messageBean = new MessageBean();
		User user = (User) getSession().getAttribute(Constrants.LOGIN_USER);
		//System.out.println("-------"+cartService.isGoodsExist(user, gid));
		CartBean cart;
		if(user==null){
			messageBean.setMessage("请登录！");
		}else{
			Goods goods = goodsService.findGoodsByID(gid);
			GoodsBean goodsBean; 
			cart = cartService.getCart(user);
			//如果该用户没有购物车，则new一个
			if(cart==null){
				goodsBean = new GoodsBean(goods,count);
				cart= new CartBean();
				cart.getList().add(goodsBean);
			}else{
				//如果添加的商品已经在redis中，则加数量
				if(cartService.isGoodsExist(user, gid)){
					for(GoodsBean gb : cart.getList()){
						if(gid == gb.getGid()){
							gb.setCount(count+gb.getCount());
						}
					}
				}else{
					//不存在new一个GoodsBean，添加到购物车
					goodsBean = new GoodsBean(goods,count);
					cart.getList().add(goodsBean);
				}
			}
			cart.setTotalMoney(cartService.getTotalMoney(cart));
			//将购物车添加到redis中
			cartService.addToCart(user,cart);
			messageBean.setMessage("添加成功");
		}
		return messageBean;
	}
	
	/** 
	* @Title: removeFromCart 
	* @Description: TODO(从购物车中删除商品) 
	* @param @return    入参
	* @return MessageBean    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午2:42:36 
	* @version V1.0   
	*/
	@ResponseBody
	@RequestMapping("/removeFromCart.do")
	public MessageBean removeFromCart(int gid){
		MessageBean messageBean = new MessageBean();
		User user = (User) getSession().getAttribute(Constrants.LOGIN_USER);
		boolean success = cartService.remove(user, gid);
		if(success){
			messageBean.setMessage("删除成功");
		}else{
			messageBean.setMessage("删除失败");
		}
		return messageBean;
	}
	
}
