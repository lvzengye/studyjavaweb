<%--
  Created by IntelliJ IDEA.
  User: 65788
  Date: 2023/4/21
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    public int max(int a, int b, int c){
        int max=0;
        if(a>b){
            if (a>c){
                max=a;
            }
            else {
                max=c;
            }
        }
        else {
            if (b>c){
                max=b;
            }
            else {
                max=c;
            }
        }
        return max;
    }

%>
     <%
         String s1= request.getParameter("v1");
         String s2= request.getParameter("v2");
         String s3= request.getParameter("v3");
         out.println(max(Integer.parseInt(s1),Integer.parseInt(s2),Integer.parseInt(s3)));
     %>
</body>
</html>
