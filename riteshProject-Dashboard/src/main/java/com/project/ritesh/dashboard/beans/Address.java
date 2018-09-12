package com.project.ritesh.dashboard.beans;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Address {
	private String state;
	private String city;
	@Column(nullable = true)
	private String pin;
	private String address;
	private String landmark;

}
