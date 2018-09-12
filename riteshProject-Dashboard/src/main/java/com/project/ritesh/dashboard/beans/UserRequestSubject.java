package com.project.ritesh.dashboard.beans;

import java.io.Serializable;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserRequestSubject implements Serializable{
	/**
	 * 
	 */
	
	/**
	 * 
	 */
	
	private String altEmail;
	private String subject;
	private String std;
}
