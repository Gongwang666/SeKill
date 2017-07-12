package com.hzyc.sekill.utils;

import java.util.UUID;


/**
 * 
 * 生成随机字符串的工具类
 * @author 龚旺
 *
 */
public class UUIDUtils {
	/**
	 * 获得随机字符串
	 * @return
	 */
	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
	}
}
