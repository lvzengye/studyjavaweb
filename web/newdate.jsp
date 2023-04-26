<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/4/26
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Calendar cal=Calendar.getInstance();
        int hours=cal.get(Calendar.HOUR_OF_DAY);
        if(hours<12)response.sendRedirect("morning.jsp");
        else response.sendRedirect("afternoon.jsp");
    %>
</body>
</html>
