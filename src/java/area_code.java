/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.javajajaja
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 91777
 */
@WebServlet(name = "area_code", urlPatterns = {"/area_code"})
public class area_code extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        HttpSession session=req.getSession();
        
        String location=req.getParameter("location");
        String id=req.getParameter("id");
        String name=req.getParameter("city");
        String pin=req.getParameter("code");
        String btn=req.getParameter("save");
        String btn1=req.getParameter("save");
        
        out.println(location);
        out.println(id);
        out.println(name);
        out.println(pin);
        
        database db=new database();
        out.println(db.connectdb());
        
        if(btn!=null){
        if(btn.equals("add")){
            
            String code=db.Insert("insert into area_code (area_code,city) value('"+pin.toString()+"','"+name.toString()+"')");
            out.println(code);
            resp.sendRedirect("admin/area_code");
        }
        }
        
        if(session.getAttribute("uname")!=null){
        if(btn1.equals("search"))
            {
               
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=null;
                    Statement st=null;
                    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
                    st=conn.createStatement();
                    String sql="select * from area_code where area_code='"+location.toString()+"'";
                    ResultSet rs=st.executeQuery(sql);
                    if(rs.next())
                    {
                        resp.sendRedirect("user/view_food.jsp");
                    }
                    else
                    {
                       resp.setContentType("text/html;charset=UTF-8");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Delivery Not available at your area...!');");
                        out.println("location='user/home_page.jsp';");
                        out.println("</script>");
                    }
                }
                catch (Exception ex){
                    out.println(ex.toString());
                }
            }
        }
        else{
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Please Login First...!');");
            out.println("location='user/home_page.jsp';");
            out.println("</script>");
        }
    }

    
}
