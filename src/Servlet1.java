import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet1")
public class Servlet1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ///response.setCharacterEncoding("GBK");
        response.setContentType("test/html");
        PrintWriter out=response.getWriter();
        out.println("<HTML>"+"<HEAD>"+"<TITLE>hahaga</TITLE>"+"</HEAD>"+"<BODY BGCOLOR=red>"+"<CENTER>" +
                "<H5>Hello World!</H5>" +
                "<H4>Hello World!</H4>" +
                "<H3>Hello World!</H3>" +
                "<H2>Hello World!</H2>" +
                "<H1>Hello World!</H1>" +
                "</CENTER>"+"</BODY>"+"</HTML>");
        out.flush();
        out.close();
    }
}
