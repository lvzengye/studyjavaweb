<%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/5/4
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="student" class="JavaBean.Student" scope="page">
  <jsp:setProperty name="student" property="*"></jsp:setProperty>
</jsp:useBean>
<table align="center" width="400">
  <
  <tr>
    <td align="center">姓名：<jsp:getProperty name="student" property="name
"/></td>
  </tr>
  <tr>
    <td align="center">姓名：<jsp:getProperty name="student" property="name
"/></td>
  </tr>
  <tr>
    <td align="center">姓名：<jsp:getProperty name="student" property="name
"/></td>
  </tr>

</table>
</body>
</html>
