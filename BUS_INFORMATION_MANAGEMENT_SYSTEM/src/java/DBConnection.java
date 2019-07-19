
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ahnaf
 */
public class DBConnection {
    
    public Connection conn = null;
    
    
    public Connection  getConnection(){
        try{
            String driverName = "oracle.jdbc.OracleDriver";
            Class.forName(driverName);
            String serverName = "DESKTOP-8SCN2TV";
            String serverPort = "1521";
            String sid="XE";
            String url = "jdbc:oracle:thin:@"+serverName+":"+serverPort+":"+sid;
            String userName = "myuser1";
            String passWord = "mypassword";
            conn=DriverManager.getConnection(url, userName, passWord);
            System.out.println("Successfully Connected to the Database");
      
        
        }catch(ClassNotFoundException e){
            System.out.println("Could not found the Database Driver "+e.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    
    
    public static void main(String[] args){
        
        
        
        /*try{
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select * from Route");
            
            while(rs.next()){
                
                int no = rs.getInt(1);
                String name = rs.getString(2).toString();
                String name2 = rs.getString(3).toString();
                System.out.println(""+no+" "+name+" "+name2);
            }
            rs.close();
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }*/
        
    }
    
    private void routInsert()
  {
    
  }
    
    
}
