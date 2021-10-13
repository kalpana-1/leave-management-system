<%-- 
    Document   : logout
    Created on : Jan 11, 2020, 12:13:08 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("index.html");

%>