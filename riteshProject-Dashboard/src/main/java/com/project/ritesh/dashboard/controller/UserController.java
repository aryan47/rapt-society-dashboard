package com.project.ritesh.dashboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.ritesh.dashboard.JpaRepository.StudentJpaRepository;
import com.project.ritesh.dashboard.configuration.BasicConfiguration;
import com.project.ritesh.dashboard.entity.Student;

@Controller
public class UserController {
	@Autowired
	StudentJpaRepository studentRepo;
	@Autowired
	BasicConfiguration basic;
	

	@RequestMapping("/tables")
	public String table(ModelMap map) {
		map.addAttribute("url",basic.getUrl());
		return "tables";
	}
	@GetMapping("/addStudent")
	public String addStudent(Student student, RedirectAttributes red) {
		//impement password field
		Student st=studentRepo.save(student);
		red.addFlashAttribute("studentAdded",st.getFirstName());
		
		return "redirect:/tables";
	}
	@GetMapping("/updateStudent")
	public String updateStudent( Student update,RedirectAttributes red) {
		System.out.println(update.getFirstName());
		Student findByEmail = studentRepo.findByEmail(update.getEmail());
		update.setId(findByEmail.getId());
		Student save = studentRepo.save(update);
		red.addFlashAttribute("studentUpdated", save.getFirstName());
		return "redirect:/tables";
	}
}
