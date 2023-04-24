package LearnServlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servletsum", value = "/LearnServlet/Servletsum")
public class Servletsum extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("GBK");
        int s=Integer.parseInt(request.getParameter("a"));
        int e=Integer.parseInt(request.getParameter("b"));
        int sum=0;
        for (int i=s;i<=e;i++){
            sum=sum+i;
        }
        PrintWriter out=response.getWriter();
        out.print("两个数的和是："+sum);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
