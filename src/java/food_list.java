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
public class food_list extends HttpServlet {

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
      
        String id=req.getParameter("id");
        String fdname=req.getParameter("fname");
        String prise=req.getParameter("price");
        String restname=req.getParameter("rname");
        String rest_add=req.getParameter("add");
        String select=req.getParameter("select");
        String charge=req.getParameter("charge");
        //String img=req.getParameter("image");
        String btnupd=req.getParameter("upd");
        String btnrmv=req.getParameter("rmv");
        
   
        out.println(fdname);
        out.println(prise);
        out.println(restname);
        out.println(rest_add);
        out.println(select);
        //out.println(img);
        out.println(btnupd);
        out.println(btnrmv);
        
        database db=new database();
        out.println(db.connectdb());
        
        
        if(btnupd!=null)
        {
               if(btnupd.equals("update"))
               {
                  
                String upd=db.Update("UPDATE `add_food` SET `food_name`='"+fdname.toString()+"', `prise`='"+prise.toString()+"', `delivery_charges`='"+charge.toString()+"', `rest_name`='"+restname.toString()+"',`rest_add`='"+rest_add.toString()+"',`category`='"+select.toString()+"' WHERE `id`='"+id.toString()+"'");
                resp.sendRedirect("admin/food_list.jsp");
                out.println(upd);
               }
        }
        if(btnrmv!=null)
        {
           if(btnrmv.equals("delete"))
           {
              String rmv=db.Delete("Delete from `add_food` where `id`='"+id.toString()+"'");
              resp.sendRedirect("admin/food_list.jsp");
              out.println(rmv);
           }
        }
        
   
   }
   

   
}
