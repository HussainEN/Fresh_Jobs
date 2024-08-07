<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Welcome</title>
</head>
<body>
    <div class="container mt-5">
        <%
            Cookie[] cookies = request.getCookies();
            String user = null;
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("user")) {
                        user = cookie.getValue();
                    }
                }
            }
            if (user != null) {
                out.print("<h1>Welcome, " + user + "!</h1>");
                out.print("<p>You have successfully logged in.</p>");
            } else {
                response.sendRedirect("Login.jsp");
            }
        %>
    </div>
</body>
</html>
