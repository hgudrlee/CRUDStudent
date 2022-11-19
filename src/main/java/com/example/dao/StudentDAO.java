package com.example.dao;

import com.example.util.JDBCUtil;
import com.example.bean.StudentVO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
	
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	// seq=?,
	private final String Student_INSERT = "insert into Student (seq, name, gender, birthday, studentid, grade, department, email, phone, photo) values (?,?,?,?,?,?,?,?,?,?)";
	private final String Student_UPDATE = "update Student set name=?, gender=?, birthday=?, studentid=?, grade=?, department=?, email=?, phone=?, photo=? where seq=?";
	private final String Student_DELETE = "delete from Student  where seq=?";
	private final String Student_GET = "select * from Student  where seq=?";
	private final String Student_LIST = "select * from Student order by seq desc";

	public int insertStudent(StudentVO vo) {
		int result = 0;
		conn = JDBCUtil.getConnection();
		System.out.println("===> JDBC로 insertStudent() 기능 처리");
		try {
			stmt = conn.prepareStatement(Student_INSERT);
			stmt.setInt(1, vo.getSeq());
			stmt.setString(2, vo.getName());
			stmt.setString(3, vo.getGender());
			stmt.setString(4, vo.getBirthday());
			stmt.setString(5, vo.getStudentid());
			stmt.setString(6, vo.getGrade());
			stmt.setString(7, vo.getDepartment());
			stmt.setString(8, vo.getEmail());
			stmt.setString(9, vo.getPhone());
			stmt.setString(10, vo.getPhoto());
			result = stmt.executeUpdate();
			System.out.println(vo.getSeq() + "-" + vo.getName() + "-" + vo.getGender() + "-" + vo.getBirthday() + "-" + vo.getStudentid() + "-" + vo.getGrade() + "-" + vo.getDepartment() + "-" + vo.getEmail() + "-" + vo.getPhone() + "-" + vo.getPhoto());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// 글 삭제
	public void deleteStudent(int seq) {
		System.out.println("===> JDBC로 deleteStudent() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(Student_DELETE);
			stmt.setInt(1, seq);
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateStudent(StudentVO vo) {
		int result = 0;
		conn = JDBCUtil.getConnection();
		System.out.println("===> JDBC로 updateStudent() 기능 처리");
		try {
			stmt = conn.prepareStatement(Student_UPDATE);

			stmt.setString(1, vo.getName());
			stmt.setString(2, vo.getGender());
			stmt.setString(3, vo.getBirthday());
			stmt.setString(4, vo.getStudentid());
			stmt.setString(5, vo.getGrade());
			stmt.setString(6, vo.getDepartment());
			stmt.setString(7, vo.getEmail());
			stmt.setString(8, vo.getPhone());
			stmt.setString(9, vo.getPhoto());
			stmt.setInt(10, vo.getSeq());

			System.out.println(vo.getSeq() + "-" + vo.getName() + "-" + vo.getGender() + "-" + vo.getBirthday() + "-" + vo.getStudentid() + "-" + vo.getGrade() + "-" + vo.getDepartment() + "-" + vo.getEmail() + "-" + vo.getPhone() + "-" + vo.getPhoto());
			result = stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	
	public StudentVO getStudent(int seq) {
		StudentVO one = new StudentVO();
		System.out.println("===> JDBC로 getStudent() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(Student_GET);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setSeq(rs.getInt("seq"));
				one.setName(rs.getString("name"));
				one.setGender(rs.getString("gender"));
				one.setBirthday(rs.getString("birthday"));
				one.setStudentid(rs.getString("studentid"));
				one.setGrade(rs.getString("grade"));
				one.setDepartment(rs.getString("department"));
				one.setEmail(rs.getString("email"));
				one.setPhone(rs.getString("phone"));
				one.setPhoto(rs.getString("photo"));
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}
	
	public ArrayList<StudentVO> getStudentList(){
		ArrayList<StudentVO> list = new ArrayList<>();
		System.out.println("===> JDBC로 getStudentList() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(Student_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				StudentVO one = new StudentVO();
				one.setSeq(rs.getInt("seq"));
				one.setName(rs.getString("name"));
				one.setGender(rs.getString("gender"));
				one.setBirthday(rs.getString("birthday"));
				one.setStudentid(rs.getString("studentid"));
				one.setGrade(rs.getString("grade"));
				one.setDepartment(rs.getString("department"));
				one.setEmail(rs.getString("email"));
				one.setPhone(rs.getString("phone"));
				one.setPhoto(rs.getString("photo"));

				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}

	public String getPhotoFileName(int seq) {
		String filename = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(Student_GET);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if (rs.next()) {
				filename = rs.getString("photo");
			}
			rs.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		System.out.println("===> JDBC로 getPhotoFileName() 기능 처리");
		return filename;
	}
}
