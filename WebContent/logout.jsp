<%
	session.removeAttribute("userSession");
	response.sendRedirect("index.jsp");
%>