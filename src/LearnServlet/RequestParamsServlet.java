package LearnServlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RequestParamsServlet", value = "/RequestParamsServlet")
public class RequestParamsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          request.setCharacterEncoding("utf-8");
          response.setContentType("text/html;charset=utf-8");
          PrintWriter out=response.getWriter();
          String name=request.getParameter("username");
          String password=request.getParameter("password");
          out.println("用户名："+name);
          out.println("密码："+password);
          String[] hobbys=request.getParameterValues("hobby");
          out.println("爱好");
          for (int i=0;i<hobbys.length;i++){
              out.print(hobbys[i]+",");
          }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
