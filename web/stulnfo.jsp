<%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/5/4
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <jsp:useBean id="student" class="JavaBean.Student"></jsp:useBean>
 <jsp:setProperty name="student" property="name" value="小蜜瓜"></jsp:setProperty>
 <jsp:setProperty name="student" property="age" value="19"></jsp:setProperty>
 <jsp:setProperty name="student" property="sex" value="女"></jsp:setProperty>
 <div>
   <ul>

     <Li>姓名：<jsp:getProperty name="student" property="name"></jsp:getProperty></Li>
     <Li>年龄：<jsp:getProperty name="student" property="age"></jsp:getProperty></Li>
     <Li>性别：<jsp:getProperty name="student" property="sex"></jsp:getProperty></Li>
   </ul>
 </div>
</body>
</html>
