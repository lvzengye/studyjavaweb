<%@ page import="JavaBean.User" %><%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/5/4
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <div align="center">
   <%
     String username=request.getParameter("username");
     String password=request.getParameter("password");
       User user=new User(username,password);
     if (!user.getUsername().equals("")&&!user.getPassword().equals("")){
         out.print("恭喜成功，登陆成功");
     }else {
         out.print("请输入正确的用户名和密码");
     }
   %>
     <br>
     <a href="JBindex.jsp">返回</a>
 </div>
</body>
</html>
