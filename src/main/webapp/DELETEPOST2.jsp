<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.StudentDAO"%>
<%@page import="com.example.bean.StudentVO"%>
<%@page import="com.example.util.FileUpload"%>

<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		StudentDAO studentDAO = new StudentDAO();
		String filename = studentDAO.getPhotoFileName(id);
		if (filename != null) {
			FileUpload.deleteFile(request, filename);
		}
		studentDAO.deleteStudent(id);
	}
	response.sendRedirect("POSTS2.jsp");
%>