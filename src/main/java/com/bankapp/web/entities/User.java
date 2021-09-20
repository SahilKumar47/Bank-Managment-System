package com.bankapp.web.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
	private String username;
	private String password;
	private String email;
	private String phone;
	private String profile;
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
