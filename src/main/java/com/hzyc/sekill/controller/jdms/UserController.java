package com.hzyc.sekill.controller.jdms;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hzyc.sekill.bean.LoginBean;
import com.hzyc.sekill.controller.BaseController;
import com.hzyc.sekill.model.User;
import com.hzyc.sekill.service.UserService;
import com.hzyc.sekill.utils.Constrants;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController{
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("toLoginPage.do")
	private String toLoginPage(){
		return "/jdms/login";
	}
	/** 
	* @Title: login 
	* @Description: TODO(用户登录) 
	* @param  User	        入参
	* @return String    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月25日 下午1:41:41 
	* @version V1.0   
	*/
	@RequestMapping("/login.do")
	public String login(User user,Model model){
		LoginBean loginBean = new LoginBean();
		User existUser = (User) getSession().getAttribute(Constrants.LOGIN_USER);
		if(existUser!=null){
			loginBean.setUserName(existUser.getUserName());
			loginBean.setMessage("用户已经登陆！");
			loginBean.setSuccess(true);
			return "redirect:/ms/show/toMSPage.do";
		}else{
			User userLogin = userService.findUserByName(user);
			if(userLogin!=null){
				getSession().setAttribute(Constrants.LOGIN_USER, userLogin);
				loginBean.setUserName(userLogin.getUserName());
				loginBean.setMessage("登陆成功！");
				loginBean.setSuccess(true);
				return "redirect:/ms/show/toMSPage.do";
			}else{
				loginBean.setMessage("登陆失败,用户名或密码错误！");
				loginBean.setSuccess(false);
				model.addAttribute("message", loginBean);
				return "forward:/user/login.do";
			}
		}
	}
}
