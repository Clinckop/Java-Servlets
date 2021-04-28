package javabeans;

import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lenovo
 */
public class student implements Serializable{
    private String name;
    private int age;

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int a) {
        age = a;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }
    
    
}
