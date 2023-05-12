<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/5/11
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
     <%
         request.setCharacterEncoding("utf-8");
         String sname=request.getParameter("username");
         String password=request.getParameter("password");
         String sql = "select * from jdbc.user where name='"+sname+"'"+"and password='"+password+"'";
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc?serverTimezone=GMT%2B8", "root", "123456");
         Statement st = conn.createStatement();
         ResultSet rs= st.executeQuery(sql);
         if (rs.next()){
             // response.sendRedirect("http://www.baidu.com/");
         %>
     <jsp:forward page="main.jsp">
         <jsp:param name="sname" value="<%sname%>"/>
     </jsp:forward>
     <%}else {%>
     <jsp:forward page="fail.jsp"></jsp:forward>
     <%}
     %>
    }
    st.close()
    con.slose()
    %>
</body>
</html>
