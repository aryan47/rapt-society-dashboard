package com.project.ritesh.dashboard.JpaRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.ritesh.dashboard.entity.StudentPasswordResetToken;
@Repository
public interface StudentPasswordResetTokenJpaRepository extends JpaRepository<StudentPasswordResetToken, Integer> {
	StudentPasswordResetToken findByToken(String token);
	
	
}
