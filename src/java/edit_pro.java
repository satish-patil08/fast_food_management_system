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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class edit_pro extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        HttpSession session=req.getSession();
        
        String uname=req.getParameter("uname");
        String fname=req.getParameter("fname");
        String lname=req.getParameter("lname");
        String email=req.getParameter("email");
        String mob=req.getParameter("mobile");
        String btn=req.getParameter("save");
        
        out.println(uname);
        out.println(fname);
        out.println(lname);
        out.println(email);
        out.println(mob);
        
        
        
        database db=new database();
        out.println(db.connectdb());
        
        if(btn.equals("update"))
        {
           String upd=db.Update("UPDATE `user_signup` SET `fname`='"+fname.toString()+"', `lname`='"+lname.toString()+"', `email`='"+email.toString()+"', `mobile_no`='"+mob.toString()+"' WHERE `uname`='"+session.getAttribute("uname")+"'");
           out.println(upd);
           resp.sendRedirect("user/profile.jsp");
        }
        
        
    }

   
}
