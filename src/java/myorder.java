/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 91777
 */
@WebServlet(name = "myorder", urlPatterns = {"/myorder"})
public class myorder extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String mycart_id=req.getParameter("mid");
        String btn=req.getParameter("cancle");
        
        
        out.println(mycart_id);
        database db=new database();
        out.println(db.connectdb());
        
        if(btn.equals("cncl")){
            String sql=db.Update("UPDATE myorder SET status='Cancelled' where id='"+mycart_id.toString()+"'");
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Your Order Cancelled Successfully...!');");
            out.println("location='user/myorder.jsp';");
            out.println("</script>");
            
        }
    }

   
}