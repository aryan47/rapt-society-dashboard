package com.project.ritesh.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ritesh.dashboard.JpaRepository.BookConfirmDetailsJpaRepository;
import com.project.ritesh.dashboard.entity.BookConfirmDetails;

@Service
public class IndexService {
	@Autowired
	private BookConfirmDetailsJpaRepository bookRepo;

	public List<BookConfirmDetails> getBookDetails() {
		return bookRepo.findAll();
		
	}
}
