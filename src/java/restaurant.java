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
public class restaurant extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String restname=req.getParameter("foodname");
        String owner=req.getParameter("oname");
        String mobile=req.getParameter("mob");
        String address=req.getParameter("add");
        String btn=req.getParameter("save");
        String btnrmv=req.getParameter("rmv");
        String btnupd=req.getParameter("upd");
        
        out.println(restname);
        out.println(owner);
        out.println(mobile);
        out.println(address);
        out.println(btn);
        out.println(btnrmv);
        out.println(btnupd);
        
        
        
  
        database db=new database();
        out.println(db.connectdb());
        if(btn!=null)
        {
            if(btn.equals("add"))
               {
                  String sql=db.Insert("insert into add_rest(rest_name,owner_name,mobile,address) value('"+restname.toString()+"','"+owner.toString()+"','"+mobile.toString()+"','"+address.toString()+"')");
                  out.println(sql);
               }
        }
           
        if(btnupd!=null)
        {
               if(btnupd.equals("update"))
               {
                 String upd=db.Update("UPDATE `add_rest` SET `owner_name`='"+owner.toString()+"', `mobile`='"+mobile.toString()+"', `address`='"+address.toString()+"' WHERE `rest_name`='"+restname.toString()+"'");
                 out.println(upd);
               }
        }
        if(btnrmv!=null)
        {
           if(btnrmv.equals("remove"))
           {
              String rmv=db.Delete("Delete from `add_rest` where `rest_name`='"+restname.toString()+"'");
              out.println(rmv);
           }
        }
       
    }
  }