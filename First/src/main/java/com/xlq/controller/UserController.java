package com.xlq.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xlq.model.product;
import com.xlq.model.user;
import com.xlq.service.ProductService;
import com.xlq.service.UserService;


@Controller
//@Scope("singleton")//@Scope("prototype")
//@SessionAttributes("User")
public class UserController {
    @Autowired
	private UserService userService;
	/*登录*/
	@RequestMapping("/login") 
	public String login(String username,String password,HttpSession httpSession){		
		//modelMap自动与session对应，你在往modelmap中添加对应属性便是往session中添加属性（前提是你已经在@SessionAttributes注解中定义好）
        try {
            user user1=this.userService.findByName(username,password);
            if (user1!=null) {
            	System.out.println(username);
            	httpSession.setAttribute("user", username);
                return "redirect:/jsp/home.jsp";
            } else {
                return "index";
            }
        } catch (Exception e) { 
            e.printStackTrace();
            return "index";
        }
		
	}
	
	
	@Autowired
	private ProductService productService; 
	/*页面加载*/
	@RequestMapping(value="/load", method=RequestMethod.GET)
	public String load() {
		System.out.println("1");
		Integer productId=null;
		//product productLists = userService.selectById(null);
		//System.out.println(productLists);
        //model.addAttribute("productLists", productLists);
		try {
			product product1 = productService.selectByPrimaryKey(productId);
			if (product1!=null) {
				return "index";	
			}else {
				return "index";
			}	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "jsp/home";
		}

	}
	
	/*注销*/
	@RequestMapping("/logout")
	public String logout(HttpSession httpSession){	
		//@ModelAttribute("User")相当于将session中名为"User"的对象注入user对象中
		//sessionStatus中的setComplete方法可以将session中的内容全部清空
		
		return "redirect:/jsp/login.jsp";
	}
	
	
	@RequestMapping("/home")
	public String HomeView() {
		return "jsp/home";
		
	}
	
}