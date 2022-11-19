<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.StudentDAO"%>
<%@ page import="com.example.bean.StudentVO" %>
<%@page import="com.example.util.FileUpload"%>

<%-- <jsp:useBean id="u" class="com.example.bean.StudentVO" />
<jsp:setProperty property="*" name="u"/> --%>

<%
	request.setCharacterEncoding("utf-8");
	StudentDAO StudentDAO = new StudentDAO();
	FileUpload upload = new FileUpload();
	StudentVO u = upload.uploadPhoto(request);

	int i = StudentDAO.updateStudent(u);
	response.sendRedirect("POSTS2.jsp");
%>