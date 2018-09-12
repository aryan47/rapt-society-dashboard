package com.project.ritesh.dashboard.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Location {
	@Id
	@GeneratedValue
	private Long id;
	private String name;
	private String city;
	@ManyToMany(mappedBy="locations")

	private Set<Instructor> instructors;
	
	
	
}
