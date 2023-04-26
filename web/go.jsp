<%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/4/26
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <%
   String s=null;
   s=request.getParameter("jump");
   switch (Integer.parseInt(s)){
     case 1:response.sendRedirect("http://www.qit.edu.cn");break;
     case 2:response.sendRedirect("http://www.ocu.edu.cn");break;
     case 3:response.sendRedirect("http://www.qdu.edu.cn");break;
     default:response.sendRedirect("");
   }
 %>
</body>
</html>
