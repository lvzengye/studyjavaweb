<%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/5/4
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="info.jsp" method="post">
  <table align="center" width="300" border="1" >
    <tr>
      <td colspan="2" align="center"><b>添加学生信息</b></td>
    </tr>
    <tr>
      <td align="right"> 姓名：<input type="text" name="name"></td>
    </tr>
    <tr>
      <td align="right"> 年龄：<input type="text" name="age"></td>
    </tr>
    <tr>
      <td align="right"> 性别：<input type="text" name="sex"></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" value="添加"></td>
    </tr>
  </table>
</form>
</body>
</html>
