/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;
import java.sql.*;
//import java.util.*;
import java.io.*;
public class DBCon {
    public Statement stmt=null;
    public PreparedStatement pstmt=null;
    public Connection con=null;
    public ResultSet rst=null;
    public DBCon()throws IOException,SQLException
    {
        try{
           Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scm", "root", "root");

   
           

        }catch(Exception e){
            e.printStackTrace();

        }

    }

}
