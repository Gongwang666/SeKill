package com.hzyc.sekill.controller.admin;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hzyc.sekill.bean.CategoryBean;
import com.hzyc.sekill.controller.BaseController;
import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.service.CategoryService;
import com.hzyc.sekill.utils.PageQueryUtil;


@Controller
@RequestMapping("/admin/category")
public class CategoryController extends BaseController{
	private CategoryService categoryService;

	@Resource(name="categoryService")
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	//跳转到添加页面
	@RequestMapping("/addPage.do")
	public String addPage(){
		return "/admin/addCategory";
	}
	//跳转到修改页面
	@RequestMapping("/editPage.do")
	public String editPage(Model model,int cid) throws Exception{
		model.addAttribute("cate", categoryService.findCategoryById(cid));
		return "/admin/editCategory";
	}
	//搜索结果
	@RequestMapping("/list.do")
	public String list(Model model,String name) throws Exception{
		model.addAttribute("list", categoryService.findCategoryByName(name));
		return "/admin/category";
	}
	//列出所有一级菜单
	@RequestMapping("/listAll.do")
	public ModelAndView listAllCategory(PageQueryUtil page) throws Exception{
		try {
			Map<String, Object> map = categoryService.findCategoryAll(page);
			return backView("/admin/category", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	//添加一级分类
	@RequestMapping("/add.do")
	public String addCategory(Category category) throws Exception{
		try {
			categoryService.addCategory(category);
			return "redirect:/admin/category/listAll.do";
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	//编辑一级分类
	@RequestMapping("/edit.do")
	public String editCategory(Category category) throws Exception{
		try {
			categoryService.edit(category);
			return "redirect:/admin/category/listAll.do";
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	//删除一级分类
	@RequestMapping("/remove.do")
	public String removeCategory(Category category) throws Exception{
		try {
			categoryService.delete(category);
			return "redirect:/admin/category/listAll.do";
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	@ResponseBody
	@RequestMapping("/search.do")
	public List<CategoryBean> search(String str){
		List<Category> caList = categoryService.findCategoryByName(str);
		List<CategoryBean> list = new ArrayList<>();
		if(caList != null){
			for(Category ca :caList){
				list.add(new CategoryBean(ca));
			}
		}
		return list;
	}
}
