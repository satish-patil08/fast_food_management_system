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
import java.util.Enumeration;

/**
 *
 * @author Administrator
 */
public class user_signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out=resp.getWriter();
        
        String firstname=req.getParameter("fname");
        String lastname=req.getParameter("lname");
        String email=req.getParameter("email");
        String mobile=req.getParameter("mob");
        String uname=req.getParameter("uname");
        String password=req.getParameter("pass");
        String address=req.getParameter("add");
        String pin=req.getParameter("pin");
        String btn=req.getParameter("signup");
        
                
        
//        out.println(firstname);
//        out.println(lastname);
//        out.println(email);
//        out.println(mobile);
//        out.println(uname);
//        out.println(password);
//        out.println(address);
//        out.println(pin);
//        out.println(btn);
        
        database db=new database();
        out.println(db.connectdb());
        
        if(btn.equals("signup"))
        {
           
           String sql=db.Insert("insert into user_signup(fname,lname,email,mobile_no,uname,pwd) value('"+firstname.toString()+"','"+lastname.toString()+"','"+email.toString()+"','"+mobile.toString()+"','"+uname.toString()+"','"+password.toString()+"')");
           out.println(sql);
           
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Account Created Sussfully...!');");
            out.println("location='user/home_page.jsp';");
            out.println("</script>");
           }
    }   
}
