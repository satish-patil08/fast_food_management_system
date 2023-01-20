
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Administrator
 */
public class database {
    
    Connection conn=null;
    Statement st=null;
    
    
    String connectdb()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
            return("Database Connected");
        }
        catch(Exception ex)
        {
            return(ex.toString());
        }
    }
    String Insert(String sql)
    {
       try
       {
          st=conn.createStatement();
          st.executeUpdate(sql);
          return("Data Inserted");
       }
       catch(Exception ex)         
       {
          return(ex.toString());
       }
    }
    
    String Update(String sql)
    {
       try
       {
          st=conn.createStatement();
          st.executeUpdate(sql);
          return("Data Updated");
       }
       catch(Exception ex)         
       {
          return(ex.toString());
       }
    }
    
    String Delete(String sql)
    {
       try
       {
          st=conn.createStatement();
          st.executeUpdate(sql);
          return("Data Removed");
       }
       catch(Exception ex)
       {
          return(ex.toString());
       }
    }
}