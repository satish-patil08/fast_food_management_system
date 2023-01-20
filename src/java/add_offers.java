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
public class add_offers extends HttpServlet {
  

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String startdate=req.getParameter("start");
        String enddate=req.getParameter("end");
        String fdname=req.getParameter("food");
        String title=req.getParameter("title");
        String img=req.getParameter("img");
        String btn=req.getParameter("save");
        
        out.println(startdate);
        out.println(enddate);
        out.println(fdname);
        out.println(title);
        out.println(img);
        
        
        
        database db=new database();
        out.println(db.connectdb());
        
        if(btn.equals("addofr"))
         {
            String a=db.Insert("insert into add_offer(category,offer_start_date,offer_end_date,img) value('"+startdate+"','"+enddate+"','"+fdname+"','"+img+"')");
            out.println(a);
         }
    
    }
    

}
