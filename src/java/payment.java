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
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class payment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        HttpSession session=req.getSession();
        
        String mycart_id=req.getParameter("mid");
        String cname=req.getParameter("cardname");
        String cno=req.getParameter("cardno");
        String expyear=req.getParameter("year");
        String expmonth=req.getParameter("month");
        String cvv=req.getParameter("cvv");
        String btn=req.getParameter("save");
       
        String user=req.getParameter("usr");
        
//       String id=req.getParameter("id");
       String restaurant=req.getParameter("rest_name");
       String food=req.getParameter("food_name");
       String prise=req.getParameter("prise");
       String img=req.getParameter("image");
       String delivery_charge=req.getParameter("charge");
       String total=req.getParameter("total_paid");
       String mobile=req.getParameter("mobile");
       
//        out.println(mycart_id);
//        out.println(restaurant);
//        out.println(food);
//        out.println(prise);
//        out.println(img);
//        out.println(total);
       
       
       String full_name=req.getParameter("name");
       String house=req.getParameter("house_no");
       String area=req.getParameter("area_name");
       String landmark=req.getParameter("landmark_name");
       String town=req.getParameter("town_name");
       String pin=req.getParameter("pincode");
       
//        out.println(full_name);
//        out.println(house);
//        out.println(area);
//        out.println(town);
//        out.println(pin);
//        
//        out.println(cname);
//        out.println(cno);
//        out.println(expyear);
//        out.println(expmonth);
//        out.println(cvv);
        
        
        
        database db=new database();
        out.println(db.connectdb());
        
        Date date=new Date();
        SimpleDateFormat formate=new SimpleDateFormat("YYYY-MM-dd");
        
        String order_date=formate.format(date);
        
        if(btn.equals("pay"))
            {
               
                    String sql="select * from payment where card_name='"+cname+"' and card_no='"+cno+"' and exp_year='"+expyear+"' and exp_month='"+expmonth+"' and cvv='"+cvv+"'";
                    out.println(sql);
                    String ins=db.Insert("insert into myorder(rest_name,food_name,prise,image,full_name,flat_no,area,landmark,town,pin,status,user_name,order_date,delivery_charges,total_paid,mobile) value('"+session.getAttribute("rest")+"','"+session.getAttribute("food")+"','"+session.getAttribute("rs")+"','"+session.getAttribute("img")+"','"+session.getAttribute("name")+"','"+session.getAttribute("house")+"','"+session.getAttribute("area")+"','"+session.getAttribute("landmark")+"','"+session.getAttribute("town")+"','"+session.getAttribute("pin")+"','IN','"+user.trim()+"','"+order_date.toString()+"','"+session.getAttribute("charge")+"','"+session.getAttribute("total")+"','"+session.getAttribute("mobile1")+"')");
                    out.println(ins);
                    resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Your Order Placed Successfully...!');");
                    out.println("location='user/myorder.jsp';");
                    out.println("</script>");
                    //String sql=db.Insert("insert into payment(card_name,card_no,exp_year,exp_month,cvv) values('"+cname.toString()+"','"+cno.toString()+"','"+expyear.toString()+"','"+expmonth.toString()+"','"+cvv.toString()+"')");
                   
//                try{
//                    Class.forName("com.mysql.jdbc.Driver");
//                    Connection conn=null;
//                    Statement st=null;
//                    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_managament_system","root","root");
//                    st=conn.createStatement();
//                    String sql="select * from payment where card_name='"+cname+"' and card_no='"+cno+"' and exp_year='"+expyear+"' and exp_month='"+expmonth+"' and cvv='"+cvv+"'";
//                    //String sql=db.Insert("insert into payment(card_name,card_no,exp_year,exp_month,cvv) values('"+cname.toString()+"','"+cno.toString()+"','"+expyear.toString()+"','"+expmonth.toString()+"','"+cvv.toString()+"')");
//                    ResultSet rs=st.executeQuery(sql);
//                    if(rs.next())
//                    {
//                        String ins=db.Insert("insert into myorder(rest_name,food_name,prise,image,full_name,flat_no,area,landmark,town,pin,status,user_name,order_date,delivery_charges,total_paid,mobile) value('"+session.getAttribute("rest")+"','"+session.getAttribute("food")+"','"+session.getAttribute("rs")+"','"+session.getAttribute("img")+"','"+session.getAttribute("name")+"','"+session.getAttribute("house")+"','"+session.getAttribute("area")+"','"+session.getAttribute("landmark")+"','"+session.getAttribute("town")+"','"+session.getAttribute("pin")+"','IN','"+user.trim()+"','"+order_date.toString()+"','"+session.getAttribute("charge")+"','"+session.getAttribute("total")+"','"+session.getAttribute("mobile1") +"')");
//                        out.println(ins);
//                        resp.setContentType("text/html;charset=UTF-8");
//                        out.println("<script type=\"text/javascript\">");
//                        out.println("alert('Your Order Placed Successfully...!');");
//                        out.println("location='user/myorder.jsp';");
//                        out.println("</script>");
//                        
//                    }
//                    else
//                    {
//                       resp.setContentType("text/html;charset=UTF-8");
//                        out.println("<script type=\"text/javascript\">");
//                        out.println("alert('Invalid Card Details Plesse Try Again...!');");
//                        out.println("location='user/mycart.jsp';");
//                        out.println("</script>");
//                    }
//                }
//                catch (Exception ex){
//                    out.println(ex.toString());
//                }
            }
        }
        
}
