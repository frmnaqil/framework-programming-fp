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
@Table(name="soal")
public class Soal {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@NotNull(message="Desc is required")
	@Column(name="desc")
	private String desc;
	
	@NotNull(message="Opsi1 is required")
	@Column(name="opsi1")
	private String opsi1;
	
	@NotNull(message="Opsi2 is required")
	@Column(name="opsi2")
	private String opsi2;
	
	@NotNull(message="Opsi3 is required")
	@Column(name="opsi3")
	private String opsi3;
	
	@NotNull(message="Opsi4 is required")
	@Column(name="opsi4")
	private String opsi4;
	
	@NotNull(message="Kunci is required")
	@Column(name="kunci")
	private String kunci;
	 
	public Soal() {
		 
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getOpsi1() {
		return opsi1;
	}

	public void setOpsi1(String opsi1) {
		this.opsi1 = opsi1;
	}

	public String getOpsi2() {
		return opsi2;
	}

	public void setOpsi2(String opsi2) {
		this.opsi2 = opsi2;
	}
	
	public String getOpsi3() {
		return opsi3;
	}

	public void setOpsi3(String opsi3) {
		this.opsi3 = opsi3;
	}
	
	public String getOpsi4() {
		return opsi4;
	}

	public void setOpsi4(String opsi4) {
		this.opsi4 = opsi4;
	}
	
	public String getKunci() {
		return kunci;
	}

	public void setKunci(String kunci) {
		this.kunci = kunci;
	}

	@Override
	public String toString() {
		return "soal [id=" + id + ", desc=" + desc + ", opsi1=" + opsi1 + ", opsi2=" + opsi2 + ", opsi3=" + opsi3 + ", opsi4=" + opsi4 + ", kunci=" + kunci + "]";
	}

}
