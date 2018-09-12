package com.project.ritesh.dashboard.entity;

import java.util.Date;

import javax.persistence.Embedded;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import org.springframework.format.annotation.DateTimeFormat;

import com.project.ritesh.dashboard.beans.Address;
import com.project.ritesh.dashboard.beans.UserRequestSubject;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookConfirmDetails {
	@EmbeddedId
	private UserRequestSubject userRequestSubject;

	
	@Embedded
	private Address addressEmbd;
	@DateTimeFormat(pattern="dd-mm-yy")
	private Date date;
	private String name;
	private String email;
	private String phoneNo;
	private boolean isActive = true;
	private String status="active";

}
