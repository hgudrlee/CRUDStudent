package com.example.bean;

import java.util.Date;

public class StudentVO {
	private int seq;
	private String name;
	private String gender;
	private Date birthday;
	private String studentid;
	private String grade;
	private String department;
	private String email;
	private String phone;
	private int cnt;

	public StudentVO() {
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getgender() {
		return gender;
	}
	public void setgender(String gender) {
		this.gender = gender;
	}
	public Date getbirthday() {
		return birthday;
	}
	public void setbirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getgrade() {
		return grade;
	}
	public void setgrade(String grade) {
		this.grade = grade;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
