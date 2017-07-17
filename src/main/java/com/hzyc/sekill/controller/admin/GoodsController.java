package com.hzyc.sekill.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hzyc.sekill.bean.CategoryBean;
import com.hzyc.sekill.bean.CategorySecondBean;
import com.hzyc.sekill.controller.BaseController;
import com.hzyc.sekill.model.CategorySecond;
import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.model.GoodsAttr;
import com.hzyc.sekill.model.GoodsImg;
import com.hzyc.sekill.model.Template;
import com.hzyc.sekill.service.CategorySecondService;
import com.hzyc.sekill.service.CategoryService;
import com.hzyc.sekill.service.GoodsImgService;
import com.hzyc.sekill.service.GoodsService;
import com.hzyc.sekill.utils.PageQueryUtil;

@Controller
@RequestMapping("/admin/goods")
public class GoodsController extends BaseController{
	@Resource(name="goodsService")
	private GoodsService goodsService;
	@Resource(name="categoryService")
	private CategoryService categoryService;
	@Resource(name="goodsImgService")
	private GoodsImgService goodsImgService;
	@Resource(name="categorySecondService")
	private CategorySecondService categorySecondService;
	
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
	
	@RequestMapping("/goodsAttr.do")
	public String goodsAttr(int gid,Model model) throws Exception{
		model.addAttribute("list", goodsService.findGoodsAttrAll(gid));
		model.addAttribute("gid", gid);
		return "/admin/goodsAttr";
	}
	//添加商品属性
	@RequestMapping("/addGoodsAttrPage.do")
	public String addGoodsAttrPage(int gid,Model model) throws Exception{
		List<Template> list =categorySecondService.findTemplatesById(
				goodsService.findGoodsByID(gid).getCategorySecond().getCsid());
		model.addAttribute("temList", list);
		return "/admin/addGoodsAttr";
	}
	
	@RequestMapping("/addGoodsAttr.do")
	public String addGoodsAttr(int[] id) throws Exception{
		for(int i:id){
			System.out.println(i+"@@@@@@@@@");
		}
		return null;
		//return "redirect:/admin/goods/goodsAttr.do";
	}
	
	@RequestMapping("/addPage.do")
	public String addPage(Model model) throws Exception{
		model.addAttribute("list", categoryService.findCategoryAll());
		return "/admin/addGoods";
	}
	
	@RequestMapping("/add.do")
	public String addGoods(MultipartFile file,Goods goods,HttpServletRequest request) throws Exception{
		try {
			String fileName = file.getOriginalFilename();
			if(!file.isEmpty()){
				// 将商品图片上传到服务器上.
				// 获得上传图片的服务器端路径.
				String path = request.getSession().getServletContext().getRealPath(
						"/goods_imgs");
				String newFileName = new Date().getTime()+fileName.substring(fileName.lastIndexOf("."));
				// 创建文件类型对象:
				File diskFile = new File(path + "//" + newFileName);
				// 文件上传:
				//FileUtils.copyFile(upload, diskFile);
				file.transferTo(diskFile);
				String src = "goods_imgs/" + newFileName;
				GoodsImg goodsImg = new GoodsImg(src,goods);
				goodsImgService.addImg(goodsImg);
				//goods.set("goods_imgs/" + newFileName);
			}
			goodsService.addGoods(goods);
			return "redirect:/admin/goods/listAll.do";
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	//根据cid查询其下的所有二级分类
	@ResponseBody
	@RequestMapping("/findCategorySec.do")
	public CategoryBean findCategorySec(int cid) throws Exception{
		return new CategoryBean(categoryService.findCategoryById(cid));
	}
	
	@ResponseBody
	@RequestMapping("/findGoods.do")
	public Map<String,Object> findGoods(int cid) throws Exception{
		//return new CategoryBean(categoryService.findCategoryById(cid));
		return null;
	}
	
	@RequestMapping("/editPage.do")
	public String editPage(Model model,int gid) throws Exception{
		//model.addAttribute("gid", gid);
		model.addAttribute("goods", goodsService.findGoodsByID(gid));
		model.addAttribute("list", categoryService.findCategoryAll());
		return "/admin/editGoods";
	}
	
	//删除
	@RequestMapping("/remove.do")
	public String removeGoods(Goods goods) throws Exception{
		try {
			goodsService.delete(goods);
			return "redirect:/admin/goods/listAll.do";
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@RequestMapping("/upload.do")
	public String uploadImg(MultipartFile file,Goods goods,HttpServletRequest request) throws IllegalStateException, IOException{
		
		return null;
	}
}
