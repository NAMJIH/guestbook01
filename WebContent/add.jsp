<%@page import="com.jihoon.guestbook.dao.GuestbookDao"%>
<%@page import="com.jihoon.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	
	// 한글 깨짐;
	request.setCharacterEncoding("UTF-8");
	// 1. 데이터 받기
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	GuestbookVo guestbookVo = new GuestbookVo();
	guestbookVo.setName(name);
	guestbookVo.setPassword(password);
	guestbookVo.setMessage(message);
	
	// 2. 받은 데이터를 DB 로 insert 시킨다
	GuestbookDao guestbookDao = new GuestbookDao();
	guestbookDao.insert(guestbookVo);
	
	// 3. 들어간 리스트를 다시 보여준다.
	response.sendRedirect("/guestbook01/list.jsp");
%>