<%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/4/21
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%---   <%
        int n=0;
        String s1=request.getParameter("q1");
        String s2=request.getParameter("q2");
        if (s1==null){s1="";}
        if (s2==null){s2="";}
        if (s1.equals("b")){n++;}
        if (s2.equals("a")){n++;}
    %>
<p>您得了<%=n%>分
---%>
<%--<%! String Name;%>--%>
<%--<%--%>
<%--    Name=request.getParameter(UserName);--%>
<%--    String s=new String("你喜欢的水果");--%>
<%--    String[] paramValues=request.getParameterValues("checbox1");--%>
<%--    for (int i=0;i<paramValues.length;i++){s+=paramValues[i]+"";}--%>
<%--%>--%>
<%--<%=Name%><br><%=s%>--%>
<%
    String name=request.getParameter("name");
    String num=request.getParameter("num");
    String answer1=request.getParameter("q1");
    String answer2=request.getParameter("q2");
    if (name!=null&&num!=null&&answer1!=null&&answer2!=null){
        session.setAttribute("name",name);
        session.setAttribute("num",num);
        session.setAttribute("answer1",answer1);
        session.setAttribute("answer2",answer2);
    }
%>
<a href="answer1.jsp">查看考试结果及答案</a>
</body>
</html>
