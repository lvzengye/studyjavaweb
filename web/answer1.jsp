<%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/4/26
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <div>
    <span>考生信息</span>
  </div>
<hr>
<%
  Object N=session.getAttribute("name");
  Object S=session.getAttribute("num");
  out.print("姓名"+N+"<br>");
  out.print("学号"+S+"<br>");
%>
<div>
  <span>考试结果</span>
</div>
<%
  int i=0;
  Object Q1=session.getAttribute("q1");
  Object Q2=session.getAttribute("q2");
  if (Q1.equals("b")){
    out.print("第一题正确<br>");
    out.print("正确答案是：李白<br>");
    i+=5;
  }else {
    out.print("第一题错误<br>");
    out.print("正确答案是：李白<br>");
  }
  if (Q2.equals("a")){
    out.print("第一题正确<br>");
    out.print("正确答案是：曹雪芹<br>");
    i+=5;
  }else {
    out.print("第一题错误<br>");
    out.print("正确答案是：曹雪芹<br>");
  }
  out.print("考试成绩为："+i);
%>
</body>
</html>
