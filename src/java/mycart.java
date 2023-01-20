/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "mycart", urlPatterns = {"/mycart"})
public class mycart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       HttpSession session=req.getSession();
       
       String id=req.getParameter("id");
       String restaurant=req.getParameter("rest_name");
       String food=req.getParameter("food_name");
       String prise=req.getParameter("prise");
       String img=req.getParameter("image");
       String charge=req.getParameter("charge");
       String total=req.getParameter("total_paid");
       String use=req.getParameter("usr");
       String btn=req.getParameter("save");
       
       String mycart_id=req.getParameter("mid");
       String full_name=req.getParameter("name");
       String mobile_no=req.getParameter("mobile");
       String house=req.getParameter("house_no");
       String area=req.getParameter("area_name");
       String landmark=req.getParameter("landmark_name");
       String town=req.getParameter("town_name");
       String pin=req.getParameter("pincode");
       String event=req.getParameter("upd");
       String rem=req.getParameter("rmv");
       
       String msg=req.getParameter("msg");
       String ad=req.getParameter("ad");
       
       
//       out.println(id);
//       out.println(restaurant);
//       out.println(food);
//       out.println(prise);
//       out.println(img);
//       out.println(charge);
//       
//       out.println(mycart_id);
//       out.println(full_name);
//       out.println(mobile_no);
//       out.println(house);
//       out.println(area);
//       out.println(landmark);
//       out.println(town);
//       out.println(pin);
//       out.println(mobile_no);
//       out.println(rem);
//       out.println(msg);
//      
      
        database db=new database();
        out.println(db.connectdb());
       
        if(btn!=null){ 
            if(btn.equals("add")){
            String sql=db.Insert("insert into mycart(rest_name,food_name,prise,image,user_name,delivery_charges) value('"+restaurant.toString()+"','"+food.toString()+"','"+prise.toString()+"','"+img.toString()+"','"+use.trim()+"','"+charge.toString()+"')");
//            out.println(sql);
             resp.setContentType("text/html;charset=UTF-8");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Added To Cart...!');");
             out.println("location='user/view_food.jsp';");
             out.println("</script>");
              }
        }
        
      
       if(event!=null){
            if(event.equals("update"))
               {
                String sql=db.Update("UPDATE mycart SET full_name='"+full_name.toString()+"', flat_no='"+house.toString()+"', area='"+area.toString()+"',landmark='"+landmark.toString()+"',town='"+town.toString()+"',pin='"+pin.toString()+"',mobile='"+mobile_no.toString()+"' where id='"+mycart_id.toString()+"'");
                //out.println(sql);
                resp.sendRedirect("user/mycart.jsp");
               }
       }
       
       if(rem!=null){
            if(rem.equals("remove")){
                String rev=db.Delete("Delete from mycart where id='"+mycart_id.toString()+"'");
                resp.sendRedirect("user/mycart.jsp");
            }
        }
        if(msg!=null){
            if(msg.equals("place")){
               session.setAttribute("cartid",req.getParameter("mid"));
               session.setAttribute("name",req.getParameter("name"));
               session.setAttribute("house",req.getParameter("house_no"));
               session.setAttribute("area",req.getParameter("area_name"));
               session.setAttribute("landmark",req.getParameter("landmark_name"));
               session.setAttribute("town",req.getParameter("town_name"));
               session.setAttribute("pin",req.getParameter("pincode"));
               session.setAttribute("rest",req.getParameter("rest_name"));
               session.setAttribute("food",req.getParameter("food_name"));
               session.setAttribute("rs",req.getParameter("prise"));
               session.setAttribute("charge",req.getParameter("delivery_charge"));
               session.setAttribute("total", req.getParameter("total_paid"));
               session.setAttribute("mobile1", req.getParameter("mobile"));
               session.setAttribute("img",req.getParameter("image"));
               
               resp.sendRedirect("user/payment.jsp");
            }
        }
        if(ad!=null){
            if(ad.equals("add"))
            {
                session.setAttribute("cartid",req.getParameter("mid"));
                resp.sendRedirect("user/address.jsp");
            }
        }
      
    }
 
}
