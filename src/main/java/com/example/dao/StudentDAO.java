package com.example.dao;

import com.example.util.JDBCUtil;
import com.example.bean.StudentVO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String Student_INSERT = "insert into Student (name, gender, birthday) values (?,?,?)";
	private final String Student_UPDATE = "update Student set name=?, gender=?, birthday=? where seq=?";
	private final String Student_DELETE = "delete from Student  where seq=?";
	private final String Student_GET = "select * from Student  where seq=?";
	private final String Student_LIST = "select * from Student order by seq desc";

	public int insertStudent(StudentVO vo) {
		System.out.println("===> JDBC로 insertStudent() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(Student_INSERT);
			stmt.setString(1, vo.getname());
			stmt.setString(2, vo.getgender());
			stmt.setDate(3, (Date) vo.getbirthday());
			stmt.setString(4, vo.getStudentid());
			stmt.setString(5, vo.getgrade());
			stmt.setString(6, vo.getDepartment());
			stmt.setString(7, vo.getEmail());
			stmt.setString(8, vo.getPhone());
			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 삭제
	public void deleteStudent(StudentVO vo) {
		System.out.println("===> JDBC로 deleteStudent() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(Student_DELETE);
			stmt.setInt(1, vo.getSeq());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateStudent(StudentVO vo) {
		System.out.println("===> JDBC로 updateStudent() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(Student_UPDATE);
			stmt.setString(1, vo.getname());
			stmt.setString(2, vo.getgender());
			stmt.setDate(3, (Date) vo.getbirthday());
			stmt.setInt(4, vo.getSeq());
			
			
			System.out.println(vo.getname() + "-" + vo.getgender() + "-" + vo.getbirthday() + "-" + vo.getSeq());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
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
				one.setname(rs.getString("name"));
				one.setgender(rs.getString("gender"));
				one.setbirthday(rs.getDate("birthday"));
				one.setCnt(rs.getInt("cnt"));
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}
	
	public List<StudentVO> getStudentList(){
		List<StudentVO> list = new ArrayList<StudentVO>();
		System.out.println("===> JDBC로 getStudentList() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(Student_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				StudentVO one = new StudentVO();
				one.setSeq(rs.getInt("seq"));
				one.setname(rs.getString("name"));
				one.setgender(rs.getString("gender"));
				one.setbirthday(rs.getDate("birthday"));
				one.setgrade(rs.getString("grade"));
				one.setCnt(rs.getInt("cnt"));
				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
}
