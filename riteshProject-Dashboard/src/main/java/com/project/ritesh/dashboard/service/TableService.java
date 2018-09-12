package com.project.ritesh.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ritesh.dashboard.JpaRepository.InstructorJpaRepository;
import com.project.ritesh.dashboard.JpaRepository.StudentJpaRepository;
import com.project.ritesh.dashboard.entity.Instructor;
import com.project.ritesh.dashboard.entity.Student;

@Service
public class TableService {
	@Autowired
	private StudentJpaRepository studentRepo;
	@Autowired
	private InstructorJpaRepository instructorRepo;

	public List<Student> getAllStudents() {
		 return studentRepo.findAll();

	}

	public List<Instructor> getAllInstrucors() {
		return instructorRepo.findAll();
	}

}
