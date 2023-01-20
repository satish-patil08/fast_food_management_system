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
public class foods extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String fdname=req.getParameter("fname");
        String prise=req.getParameter("fdprise");
        String restname=req.getParameter("rname");
        String rest_add=req.getParameter("add");
        String select=req.getParameter("select");
        String charge=req.getParameter("charge");
        String img=req.getParameter("image");
        String btn=req.getParameter("save");
        
//        out.println(fdname);
//        out.println(prise);
//        out.println(restname);
//        out.println(rest_add);
//        out.println(select);
//        out.println(img);
        
        
        database db=new database();
        out.println(db.connectdb());
        
        if(btn.equals("add"))
         {
            String sql=db.Insert("insert into add_food(food_name,prise,rest_name,rest_add,category,delivery_charges,img) value('"+fdname.toString()+"','"+prise.toString()+"','"+restname.toString()+"','"+rest_add.toString()+"','"+select.toString()+"','"+charge.toString()+"','../assets/img/gallery/"+img.toString()+"')");
            resp.sendRedirect("admin/food_list.jsp");
            out.println(sql);
         }
    }
    

}
