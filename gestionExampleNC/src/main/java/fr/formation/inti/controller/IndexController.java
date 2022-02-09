package fr.formation.inti.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.inti.entity.User;

@Controller
public class IndexController {

	@RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("message", "Hello Spring MVC");
		model.addAttribute("user", new User("root", "123456"));
		return "index";
	}
	@RequestMapping(value = {"/", "/index"}, method = RequestMethod.POST)
	public String index(Model model, @RequestParam(name = "login") String login) {
		model.addAttribute("message", "Hello " + login);
		model.addAttribute("user", new User(login, "123456"));
		return "index";
	}
	
	@RequestMapping(value = "/index2", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "Model and view");
		mv.addObject("user", new User("root2", "123456"));
		mv.setViewName("index");
		return mv;
	}
}
