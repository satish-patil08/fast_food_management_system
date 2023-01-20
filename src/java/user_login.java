/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Administrator
 */
public class user_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            PrintWriter out=resp.getWriter();
            
            
            String username=req.getParameter("uname");
            String password=req.getParameter("pass");
            String btn=req.getParameter("login");
            
            String uname=req.getParameter("user_name");
            String pass=req.getParameter("password");
            String btn1=req.getParameter("change");
            
            out.println(username);
            out.println(password);
            
            database db=new database();
            out.println(db.connectdb());  
            
            if(btn!=null){
            if(btn.equals("Login"))
            {
               
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=null;
                    Statement st=null;
                    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
                    st=conn.createStatement();
                    String sql="select * from user_signup where uname='"+username+"' and pwd='"+password+"'";
                    ResultSet rs=st.executeQuery(sql);
                    if(rs.next())
                    {
                        HttpSession session=req.getSession();
                        session.setAttribute("uname", username);
                        String user=rs.getString("uname");
                        out.println("Login Successfull!!");
                        resp.sendRedirect("user/home_page.jsp");
                    }
                    else
                    {
                       resp.setContentType("text/html;charset=UTF-8");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Login Faild');");
                        out.println("location='user/home_page.jsp';");
                        out.println("</script>");
                    }
                }
                catch (Exception ex){
                    out.println(ex.toString());
                }
            }
            }
            
            if(btn1!=null){
            if(btn1.equals("change_pass")){
            String upd=db.Update("UPDATE `user_signup` SET pwd='"+pass.toString()+"' where uname='"+uname.toString()+"'");
            out.println(upd);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Password Changed Successfully..!');");
            out.println("location='user/home_page.jsp';");
            out.println("</script>");
            }
            }
    }

}