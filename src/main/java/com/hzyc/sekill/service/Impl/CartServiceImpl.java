package com.hzyc.sekill.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.bean.CartBean;
import com.hzyc.sekill.bean.GoodsBean;
import com.hzyc.sekill.model.User;
import com.hzyc.sekill.redis.RedisUtil;
import com.hzyc.sekill.service.CartService;

/** 
* @ClassName: CartServiceImpl 
* @Description: TODO(购物车Service实现类) 
* @author (作者)  
* @date 2017年7月29日 上午8:20:41 
* @version V1.0 
*/
@Service("cartService")
public class CartServiceImpl implements CartService {
	@Resource(name="redisUtil")
	private RedisUtil redisUtil;

	@Override
	public void addToCart(User user, CartBean cart) {
		redisUtil.put("Cart:"+user.getUid(), "cartBean", cart);
	}

	@Override
	public CartBean getCart(User user) {
		return (CartBean)redisUtil.get("Cart:"+user.getUid(), "cartBean");
	}

	@Override
	public Boolean isGoodsExist(User user,int gid) {
		CartBean cart = getCart(user);
		if(cart!=null){
			for(GoodsBean goodsBean : cart.getList()){
				if(gid == goodsBean.getGid()){
					return true;
				}
			}
		}
		return false;
	}

	@Override
	public boolean remove(User user,int gid) {
		CartBean cart = getCart(user);
		boolean success = false;
		if(cart!=null){
			for(GoodsBean goodsBean : cart.getList()){
				if(gid == goodsBean.getGid()){
					//删除
					success =cart.getList().remove(goodsBean);
					//重新添加
					cart.setTotalMoney(getTotalMoney(cart));
					addToCart(user,cart);
					break;
				}
			}
		}
		return success;
	}

	@Override
	public Double getTotalMoney(CartBean cart) {
		double total = 0;
		for(GoodsBean goods : cart.getList()){
			total += goods.getCount()*goods.getPrice();
		}
		return total;
	}
	
}
