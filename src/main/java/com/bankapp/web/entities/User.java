package com.bankapp.web.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "user_table")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userId;
	@NotEmpty(message = "Username cannot be null")
	private String username;
	private String password;
	private String email;
	@Min(value = 10, message = "Must be 10 digits")
	private String phone;
	@NotEmpty(message = "value cannot be null")
	private String profile;
	@NotNull(message = "value cannot be null")
	private Double salary;

	public User(String username, String password, String email, String phone, String profile, Double salary) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.profile = profile;
		this.salary = salary;
	}      
}
