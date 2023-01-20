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
public class complaint extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String firstname=req.getParameter("fname");
        String lastname=req.getParameter("lname");
        String mobile=req.getParameter("mob");
        String email=req.getParameter("email");
        String msg=req.getParameter("msg");
        String image=req.getParameter("img");
        String btn=req.getParameter("save");
        
        
//        out.println(firstname);
//        out.println(lastname);
//        out.println(mobile);
//        out.println(email);
//        out.println(msg);
//        out.println(image);
        
        
        database db=new database();
        out.println(db.connectdb());
        
        
        if(btn.equals("save"))
        {
           String sql=db.Insert("insert into complaint(fname,lname,mobile,email_id,complaint) value('"+firstname.toString()+"','"+lastname.toString()+"','"+mobile.toString()+"','"+email.toString()+"','"+msg.toString()+"')");
           out.println(sql);
           resp.sendRedirect("user/complaint.jsp");
        }
    }

    
}
