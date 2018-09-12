package com.project.ritesh.dashboard.JpaRepository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.project.ritesh.dashboard.entity.Student;
import com.project.ritesh.dashboard.entity.Subject;
@RepositoryRestResource(path = "students", collectionResourceRel="students")
public interface StudentJpaRepository extends JpaRepository<Student, Long> {

	List<Subject> findByFirstNameContaining(String firstName);

	Student findByFirstName(String firstName);

	Student findByEmail(String username);
	
}
