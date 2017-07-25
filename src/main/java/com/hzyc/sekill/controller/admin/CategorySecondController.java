package com.hzyc.sekill.controller.admin;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hzyc.sekill.controller.BaseController;
import com.hzyc.sekill.model.CategorySecond;
import com.hzyc.sekill.model.Template;
import com.hzyc.sekill.service.CategorySecondService;
import com.hzyc.sekill.service.CategoryService;
import com.hzyc.sekill.utils.PageQueryUtil;


@Controller
@RequestMapping("/admin/categorySecond")
public class CategorySecondController extends BaseController{
	@Resource(name="categorySecondService")
	private CategorySecondService categorySecondService;
	
	@Resource(name="categoryService")
	private CategoryService categoryService;
	
	@RequestMapping("/listAll.do")
	public ModelAndView listAllCategorySec(PageQueryUtil page) throws Exception{
		try {
			Map<String, Object> map = categorySecondService.findCategoryAll(page);
			return backView("/admin/categorySecond", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	//跳转到添加页面
	@RequestMapping("/addPage.do")
	public String addPage(Model model) throws Exception{
		model.addAttribute("cate", categoryService.findCategoryAll());
		return "/admin/addCategorySecond";
	}
	@RequestMapping("/add.do")
	public String addCategorySecond(CategorySecond cs) throws Exception{
		try {
			categorySecondService.addCategorySecond(cs);
			return "redirect:/admin/categorySecond/listAll.do";
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	@RequestMapping("/addTemplatePage.do")
	public String addTemplatePage(Model model,int csid){
			model.addAttribute("csid", csid);
			model.addAttribute("templates", categorySecondService.findTemplatesById(csid));
			return "/admin/addTemplate";
	}
	@RequestMapping("/addTemplate.do")
	public String addTemplate(CategorySecond cs){
		categorySecondService.addTemplate(cs);	
		return "redirect:/admin/categorySecond/listAll.do";
	}
	
	@RequestMapping("/removeTemplate.do")
	public String removeTemplate(Template template,int csid) throws Exception{
		try {
			categorySecondService.delete(template);
			return "redirect:/admin/categorySecond/addTemplatePage.do?csid="+csid;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	//跳转到修改页面
	@RequestMapping("/editPage.do")
	public String editPage(Model model,int csid) throws Exception{
		model.addAttribute("categorySec", categorySecondService.findById(csid));
		model.addAttribute("categoryList", categoryService.findCategoryAll());
		return "/admin/editCategorySecond";
	}
	//修改
	@RequestMapping("/edit.do")
	public String editCategorySec(CategorySecond cs) throws Exception{
		try {
			categorySecondService.edit(cs);
			return "redirect:/admin/categorySecond/listAll.do";
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	//删除
	@RequestMapping("/remove.do")
	public String removeCategorySec(CategorySecond cs) throws Exception{
		try {
			categorySecondService.delete(cs);
			return "redirect:/admin/categorySecond/listAll.do";
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}
