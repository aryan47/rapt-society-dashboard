package com.project.ritesh.dashboard.JpaRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.project.ritesh.dashboard.entity.Role;
@RepositoryRestResource(path="role")
public interface RoleJpaRepository extends JpaRepository<Role, Integer>{

}
