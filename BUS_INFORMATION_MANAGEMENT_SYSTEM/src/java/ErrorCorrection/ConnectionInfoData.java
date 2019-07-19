
package ErrorCorrection;

/**
 *
 * @author ahnaf
 */
public class ConnectionInfoData {
        
    private int emnum; 
    private String location; 
    private String pnum;
    // Parameterized Constructor to set Student 
    // name, age, course enrolled in. 
    public ConnectionInfoData(int a, String b, String c) 
    { 
        this.emnum = a;
        this.location = b;
        this.pnum = c;
        
    } 
    // Setter Methods to set table data to be 
    // displayed 
    public int getEmnum() { return emnum; } 
    public String getLocation() { return location; } 
    public String getPnum() { return pnum; }
    
    
    
}
