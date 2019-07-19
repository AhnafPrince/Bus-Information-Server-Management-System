/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ahnaf
 */
package ErrorCorrection;

public class AvailableData {
    private int bnum; 
    private String btype; 
    private int total_Seats;
    private int fare;
    // Parameterized Constructor to set Student 
    // name, age, course enrolled in. 
    public AvailableData(int a, String b, int c, int d) 
    { 
        this.bnum = a; 
        this.btype = b; 
        this.total_Seats = c;
        this.fare = d;
    } 
    // Setter Methods to set table data to be 
    // displayed 
    public int getBnum() { return bnum; } 
    public String getBtype() { return btype; } 
    public int getTotalSeats() { return total_Seats; }
    public int getFare() {return fare ; }
    
    
}
