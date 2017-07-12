package com.hzyc.sekill.controller.admin;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hzyc.sekill.controller.BaseController;
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
	/*@RequestMapping("/toAddCategoryPage")
	public String toAddPage(@ModelAttribute(value="category") Category category){
		return "forward:/admin/jsp/addCategory.jsp";
	}
	//添加一级菜单
	@RequestMapping("/add")
	public String addCategory(@ModelAttribute(value="category") Category category){
		categoryService.addCategory(category);
		return "redirect:/adminCategory/listAllCategory";
	}
	//前往修改页面
	@RequestMapping("/toEditCategoryPage")
	public String toEditPage(Model model,@ModelAttribute(value="category") Category category,@RequestParam("cid") int cid){
		Category cate = categoryService.findCategoryByCid(cid);
		model.addAttribute("cate", cate);
		return "forward:/admin/jsp/editCategory.jsp";
	}
	//修改一级菜单
	@RequestMapping("/edit")
	public String editCategory(@ModelAttribute(value="category") Category category){
		categoryService.editCategory(category);
		return "redirect:/adminCategory/listAllCategory";
	}
	//删除指定一级菜单
	@RequestMapping("/remove")
	public String remove(@RequestParam(value="cid") int cid){
		Category category = categoryService.findCategoryByCid(cid);
		categoryService.deleteCategory(category);
		return "redirect:/adminCategory/listAllCategory";
	}*/
}
