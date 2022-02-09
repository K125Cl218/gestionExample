package fr.formation.inti.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.inti.entity.User;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "Model and view");
		mv.addObject("user", new User("root2", "123456"));
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value = "/login2", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("message", "Hello Spring MVC");
		model.addAttribute("user", new User("root", "123456"));
		return "login";
	}
}
