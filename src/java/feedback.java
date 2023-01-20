/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String firstname=req.getParameter("fname");
        String lastname=req.getParameter("lname");
        String mobile=req.getParameter("mob");
        String email=req.getParameter("email");
        String message=req.getParameter("msg");
        String btn=req.getParameter("save");
        
        
        out.println(firstname);
        out.println(lastname);
        out.println(mobile);
        out.println(email);
        out.println(message);
        
        
        database db=new database();
        out.println(db.connectdb());
        
        
        if(btn.equals("send"))
        {
           String sql=db.Insert("insert into feedback(fname,lname,mobile,email_id,feedback) value('"+firstname.toString()+"','"+lastname.toString()+"','"+mobile.toString()+"','"+email.toString()+"','"+message.toString()+"')");
           out.println(sql);
           resp.setContentType("text/html;charset=UTF-8");
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Thanks For Feedback');");
           out.println("location='user/view_food.jsp';");
           out.println("</script>");
        }
    }
    

}