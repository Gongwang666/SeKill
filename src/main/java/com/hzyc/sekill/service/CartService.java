package com.hzyc.sekill.service;

import com.hzyc.sekill.bean.CartBean;
import com.hzyc.sekill.model.User;

/** 
* @ClassName: CartService 
* @Description: TODO(购物车Service) 
* @author (作者)  
* @date 2017年7月29日 上午8:19:36 
* @version V1.0 
*/
public interface CartService {
	/** 
	* @Title: addToCart 
	* @Description: TODO(将商品添加到购物车) 
	* @param @param user
	* @param @param cart    入参
	* @return void    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月29日 上午10:55:56 
	* @version V1.0   
	*/
	void addToCart(User user,CartBean cart);
	/** 
	* @Title: getCart 
	* @Description: TODO(获得用户的购物车) 
	* @param @param key
	* @param @param key1
	* @param @return    入参
	* @return CartBean    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月29日 上午10:56:30 
	* @version V1.0   
	*/
	CartBean getCart(User user);
	
	
	/** 
	* @Title: isGoodsExist 
	* @Description: TODO(判断商品是否已经存在) 
	* @param @param user
	* @param @param gid
	* @param @return    入参
	* @return Boolean    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月29日 上午11:11:06 
	* @version V1.0   
	*/
	Boolean isGoodsExist(User user,int gid);
	
	/** 
	* @Title: remove 
	* @Description: TODO(从购物车删除商品) 
	* @param     入参
	* @return void    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午12:34:15 
	* @version V1.0   
	*/
	boolean remove(User user,int gid);
	
	Double getTotalMoney(CartBean cart);
}
