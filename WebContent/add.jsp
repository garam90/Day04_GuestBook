<%@page import="com.sds.icto.guestbook.dao.GuestBookDAO"%>
<%@page import="com.sds.icto.guestbook.vo.GuestBookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String message = request.getParameter("content");
	
	GuestBookVO vo = new GuestBookVO();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);

	GuestBookDAO dao = new GuestBookDAO();
	dao.insert(vo);

	response.sendRedirect("/Day04_GuestBook");
%>
