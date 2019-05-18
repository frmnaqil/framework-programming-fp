package com.cat.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Table(name="peserta")
public class Peserta {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@NotNull(message="Name is required")
	@Column(name="name")
	private String name;
	
	@NotNull(message="Email is required")
	@Column(name="email")
	private String email;
	
	@NotNull(message="Password is required")
	@Size(min=6, message="Password must longer than 6 characters")
	@Column(name="password")
	private String password;
	 
	public Peserta() {
		 
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Peserta [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}

}
