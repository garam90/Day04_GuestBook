<%@page import="com.sds.icto.guestbook.dao.GuestBookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	GuestBookDAO dao = new GuestBookDAO();
	dao.delete(Integer.parseInt(id), password);
	
	response.sendRedirect("/Day04_GuestBook");	
%>