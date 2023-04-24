package Session;

import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.awt.*;
import java.io.IOException;

@WebServlet(name = "PurchaseServlet", value = "/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        if(id==null){
            String url="LisCakeServlet";
            response.setContentType(url);
            return;
        }
        Cake cake=CakeDB.getCake(id);
        HttpSession session=request.getSession();
        List<Cake> cart=(List)session.getAttribute("cart");
        if(cart==null){
            cart=new ArrayList<Cake>();
            session.setAttribute("cart","cart");
            cart.add(cake);
            Cookie cookie=new Cookie("JESSIONID",session.getId());
            cookie.setMaxAge(60*30);
            cookie.setPath("/untitled1");
            response.addCookie(cookie);
            String url="CartServlet";
            response.sendRedirect(url);
            String newurl=response.encodeRedirectURL(url);
            //response.sendRedirect(newurl);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doGet(request, response);
    }
}
