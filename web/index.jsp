<%@ page import="javax.xml.crypto.Data" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/3/29
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
 <%--   <%!
      public int print(){
        int sum=0;
        for (int i=1;i<=10;i++){
          sum+=i;
        }
        return sum;
      }
    %>
    <%
      Date date=new Date();
      SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      String today=df.format(date);
      out.println(print());
      for (int j=1;j<=10;j++){
        for (int i=1;i<=j;i++){
          out.println(i);
        }
        out.println("<br/>");
      }
    %>
    <br/>
  当前时间：<%=today%>
  ---%>

  </body>
</html>
