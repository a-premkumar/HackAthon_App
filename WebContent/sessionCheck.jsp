<%
	String userSession = (String)session.getAttribute("userSession");
	if(userSession == null || "".equals(userSession))
		response.sendRedirect("index.jsp");
%>