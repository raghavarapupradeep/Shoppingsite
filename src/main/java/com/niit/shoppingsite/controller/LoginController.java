package com.niit.shoppingsite.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingsite.dao.LoginDAO;
import com.niit.shoppingsite.model.Login;
@Controller
public class LoginController {
	@Autowired
	private LoginDAO loginDAO;

	@RequestMapping(value="/Login")
	public ModelAndView getAllData(@ModelAttribute("login")Login login,BindingResult result,Model model)
	{
		ModelAndView mv = new ModelAndView("/index");
	mv.addObject("loginList",loginDAO.list());
	mv.addObject("UserClickedLogin","true");
		return mv;
	}
	
	
	@RequestMapping(value="/addLogin",method = RequestMethod.POST)
   public String addItem(@ModelAttribute("login") Login login){
		
		this.loginDAO.save(login);
		return "redirect:/Login";
		
	}
	@RequestMapping(value="/editBylid/{lid}",method = RequestMethod.GET)
	public String editItem(@PathVariable("lid") int lid, RedirectAttributes attributes) {
		System.out.println("editLogin");
		attributes.addFlashAttribute("login", this.loginDAO.get(lid));
		
		return "redirect:/Login";
	}	
	@RequestMapping(value="/deleteBylid/{lid}",method = RequestMethod.GET)
	public String deleteItem(@PathVariable("lid") int lid)
	{
		loginDAO.delete(lid);
		return "redirect:/Login";
		
}
}
