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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 91777
 */
@WebServlet(name = "delivery_panel", urlPatterns = {"/delivery_panel"})
public class delivery_panel extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String id=req.getParameter("id");
        String select=req.getParameter("select");
        String upd=req.getParameter("change");
        
        
        out.println(id);
        out.println(select);
        out.println(upd);

        database db=new database();
        out.println(db.connectdb());
        
        if(upd.equals("status_change_button")){
            String change=db.Update("Update myorder SET status='"+select.toString()+"' where id='"+id.toString()+"'");
            resp.sendRedirect("admin/delivery_panel.jsp");
            out.println(change);
            
        }
    }

  
}
