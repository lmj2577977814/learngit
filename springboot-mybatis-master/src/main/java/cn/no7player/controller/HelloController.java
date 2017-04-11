package cn.no7player.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.no7player.model.User;
import cn.no7player.service.UserService;

@Controller
@RequestMapping("/test")
public class HelloController
{
	@Autowired
	private UserService userService;

    @RequestMapping("/hello.html")
    public String greeting() {
        return "login";
    }
    
    @RequestMapping("/login.html")
    public String login(@RequestParam("username")String username,@RequestParam("password") String password,Model model)
    {
    	System.out.println("===========================");
    	User user1=userService.Login(username,password);
    	if(user1!=null)
    	{
    		System.out.println(user1.toString());
    		model.addAttribute("user", user1);
    		return "main";
    	}
    	else
    	{
    		model.addAttribute("message", "用户名或密码错误");
    		return "login";
    	}
    }
    @RequestMapping("openRegistor.html")
	  public String openRegistor()
	  {
		  return "registor";
	  }
    @RequestMapping("registor.html")
    public String registor(@ModelAttribute("user") User user,Model model)
    {
    	System.out.println(user.toString());
    	
    	User user1=userService.Login(user.getUsername(), user.getPassword());
    	if(user1==null)
    	{
    		userService.registor(user);
        	model.addAttribute("message", "注册成功,请跳转到登录界面");
        	
    	}
    	else
    	{
    		model.addAttribute("message", "对不起,该用户名已注册,请选择新的用户名");
    	}
    	return "registor";
    }
    
}
