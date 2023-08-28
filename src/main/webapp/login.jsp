<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% if(request.getMethod().equalsIgnoreCase("POST") && request.getParameter("username").equalsIgnoreCase("admin") && request.getParameter("password").equalsIgnoreCase("password")) {
   response.sendRedirect("/profile.jsp");
}
%>
<html>
<head>
    <%@ include file="partials/style-sheets.jsp"%>
    <title>Login</title>
</head>
<body>
<%@ include file="partials/navbar.jsp"%>
<h1>Sign In</h1>
<form method="POST" action="/login.jsp">
    <label for="username">Username</label>
    <input type="text" id="username" name="username">
    <label for="password">Password</label>
    <input type="password" id="password" name="password">
    <input type="submit">
</form>
<%@ include file="partials/footer.jsp"%>
<%@ include file="partials/scripts.jsp"%>
</body>
</html>
