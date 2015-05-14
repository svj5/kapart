<HTML>

<HEAD>
<TITLE>hello jsp</TITLE>
<%!
String message = "Hello, World, from JSP";
%>
</HEAD>

<BODY>

<h2><font color="#AA0000"><%= message%></font></h2>

<h3><font color="#AA0000">
<%= new java.util.Date() %> </font></h3>

</BODY>

</HTML>


