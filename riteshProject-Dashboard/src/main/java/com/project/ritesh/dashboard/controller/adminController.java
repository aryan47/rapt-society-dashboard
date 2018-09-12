package com.project.ritesh.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.ritesh.dashboard.entity.BookConfirmDetails;
import com.project.ritesh.dashboard.entity.Instructor;
import com.project.ritesh.dashboard.entity.Student;
import com.project.ritesh.dashboard.service.IndexService;
import com.project.ritesh.dashboard.service.TableService;

@Controller

public class adminController {
	@Autowired
	private IndexService indexService;
	@Autowired
	private TableService tableService;
	private List<BookConfirmDetails> bookDetails;
	@GetMapping({"/",""})
	public String home(ModelMap map) {
		System.out.println("inside controller");
		bookDetails = indexService.getBookDetails();
		map.addAttribute("bookDetails",bookDetails);
		return "index";
	}
	@GetMapping("/pendingRequest")
	public String porcessRequest(ModelMap map) {
		bookDetails = indexService.getBookDetails();
		map.addAttribute("bookDetails",bookDetails);
		return "pendingRequest";
	}
	@GetMapping("/studentTable")
	public String tableStudent(ModelMap map) {
		List<Student> allStudents = tableService.getAllStudents();
		map.addAttribute("students",allStudents);
		return "studentTable";
	}
	@GetMapping("/instructorTable")
	public String tableInstructor(ModelMap map) {		
		List<Instructor> allInstructors = tableService.getAllInstrucors();
		map.addAttribute("instructors",allInstructors);		
		return "instructorTable";
	}
}
