/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.io.Serializable;

/**
 *
 * @author Lenovo
 */

public class auth implements Serializable{
    private String name;
    private String rollno;
    private int total_marks;
    private float percentage;
    
    public void setRollno(String rollno) {
        this.rollno = rollno;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTotal_marks(int total_marks) {
        this.total_marks = total_marks;
    }

    public String getName() {
        return name;
    }

    public String getRollno() {
        return rollno;
    }

    public int getTotal_marks() {
        return total_marks;
    }

    public float getPercentage() {
        percentage = total_marks / 3;
        return percentage;
    }


}

