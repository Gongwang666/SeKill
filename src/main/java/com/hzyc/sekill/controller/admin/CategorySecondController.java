package com.hzyc.sekill.controller.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.model.CategorySecond;
import com.hzyc.sekill.service.CategorySecondService;
import com.hzyc.sekill.service.CategoryService;
import com.hzyc.sekill.utils.PageBean;


@Controller
@RequestMapping("/adminCategorySecond")
public class CategorySecondController {
	private CategorySecondService categorySecondService;
	private CategoryService categoryService;
	@Resource(name="categorySecondService")
	public void setCategorySecondService(
			CategorySecondService categorySecondService) {
		this.categorySecondService = categorySecondService;
	}
	@Resource(name="categoryService")
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	/*//带有分页的列出所有二级分类
	@RequestMapping("/listAllCategorySecond")
	public String listAllCategorySecond(Model model,@RequestParam("page") int page){
		PageBean<CategorySecond> pageBean = categorySecondService.getAllCategorySecond(page);
		model.addAttribute("pageBean", pageBean);
		return "forward:/admin/jsp/categorySecond.jsp";
	}
	@RequestMapping("/toAddCategorySecondPage")
	public String toAddPage(Model model,@ModelAttribute(value="categorySecond") CategorySecond categorySecond){
		List<Category> categoryList = categoryService.getAllCategories();
		model.addAttribute("categoryList", categoryList);
		return "forward:/admin/jsp/addCategorySecond.jsp";
	}
	//添加二级分类
	@RequestMapping("/add")
	public String addCategorySecond(Model model,@ModelAttribute("categorySecond") CategorySecond categorySecond){
		categorySecondService.addCategorySecond(categorySecond);
		//添加完跳转回原页面
		return "redirect:/adminCategorySecond/listAllCategorySecond?page=1";
	}
	@RequestMapping("/delete")
	public String delCategorySecond(@RequestParam("csid") int csid,@RequestParam(value="page") int page){
		CategorySecond categorySecond = categorySecondService.findCategorySecond(csid);
		categorySecondService.deleteCategorySecond(categorySecond);
		return "redirect:/adminCategorySecond/listAllCategorySecond?page="+page;
	}
	//到编辑二级分类的界面
	@RequestMapping("/toEditCategorySecondPage")
	public String toEditPage(Model model,@ModelAttribute("categorySecond") CategorySecond categorySecond,@RequestParam("csid") int csid){
		CategorySecond categorySec = categorySecondService.findCategorySecond(csid);
		List<Category> categoryList = categoryService.getAllCategories();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("categorySec", categorySec);
		return "forward:/admin/jsp/editCategorySecond.jsp";
	}
	//编辑二级菜单
	@RequestMapping("/edit")
	public String editCategorySecond(@ModelAttribute("categorySecond") CategorySecond categorySecond){
		categorySecondService.editCategorySecond(categorySecond);
		return "redirect:/adminCategorySecond/listAllCategorySecond?page=1";
	}*/
}
