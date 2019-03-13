<%@page import="com.jihoon.guestbook.dao.GuestbookDao"%>
<%@page import="com.jihoon.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 데이터를 받는다.
	long no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestbookVo guestbookVo = new GuestbookVo();
	guestbookVo.setNo(no);
	guestbookVo.setPassword(password);

	
	GuestbookDao guestbookDao = new GuestbookDao();
	guestbookDao.delete(guestbookVo);

	response.sendRedirect("/guestbook01/list.jsp");
%>
