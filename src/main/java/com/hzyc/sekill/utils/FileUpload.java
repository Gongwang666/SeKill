package com.hzyc.sekill.utils;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.model.GoodsImg;

public class FileUpload {
	private MultipartFile file;
	private Goods goods;
	private HttpServletRequest request;
	
	
	public FileUpload(MultipartFile file, Goods goods, HttpServletRequest request) {
		this.file = file;
		this.goods = goods;
		this.request = request;
	}


	public void upload(){
		String fileName = file.getOriginalFilename();
		if(!file.isEmpty()){
			// 将商品图片上传到服务器上.
			// 获得上传图片的服务器端路径.
			String path = request.getSession().getServletContext().getRealPath(
					"/products/1");
			String newFileName = new Date().getTime()+fileName.substring(fileName.lastIndexOf("."));
			// 创建文件类型对象:
			File diskFile = new File(path + "//" + newFileName);
			// 文件上传:
			//FileUtils.copyFile(upload, diskFile);
			try {
				file.transferTo(diskFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			String src = "goods_imgs/" + newFileName;
			//GoodsImg goodsImg = new GoodsImg(src,goods);
			
			//goods.set("goods_imgs/" + newFileName);
		}
	}
}
