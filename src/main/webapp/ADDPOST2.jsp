<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.dao.StudentDAO"%>
<%@ page import="com.example.bean.StudentVO" %>
<%@ page import="com.example.util.FileUpload"%>

<%
	request.setCharacterEncoding("utf-8");
	StudentDAO StudentDAO = new StudentDAO();
	FileUpload upload = new FileUpload();
	StudentVO u = upload.uploadPhoto(request);

	int i = StudentDAO.insertStudent(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
	alert('<%=msg%>');
	location.href='POSTS2.jsp';
</script>