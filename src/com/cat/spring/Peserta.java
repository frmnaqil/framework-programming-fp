package com.cat.spring;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Peserta {
	
	@NotNull(message="Name is required")
	private String name;
	@NotNull(message="Email is required")
	private String email;
	@NotNull(message="Password is required")
	@Size(min=6, message="Password must longer than 6 characters")
	private String password;
	 
	public Peserta() {
		 
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
		return "Peserta [name=" + name + ", email=" + email + ", password=" + password + "]";
	}
	 
	 

}
