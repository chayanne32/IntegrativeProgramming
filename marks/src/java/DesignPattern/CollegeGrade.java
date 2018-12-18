package DesignPattern;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Libanan
 */
public class CollegeGrade extends Grades implements ConvertGrade{
    
    //protected String grade;

    @Override
    public String convert(double percent) {
        
        if(percent >= 96.0){
            super.grade = "1.0 ~ 1.24";
        }else if(percent < 96.0 && percent >= 94.0){
            super.grade = "1.25 ~ 1.49";
        }else if(percent < 94.0 && percent >= 91.0){
            super.grade = "1.50 ~ 1.74";
        }else if(percent < 91.0 && percent >= 89.0){
            super.grade = "1.75 ~ 1.99";
        }else if(percent < 89.0 && percent >= 86.0){
            super.grade = "2.00 ~ 2.24";
        }else if(percent < 86.0 && percent >= 83.0){
            super.grade = "2.25 ~ 2.49";
        }else if(percent < 83.0 && percent >= 80.0){
            super.grade = "2.50 ~ 2.74";
        }else if(percent < 80.0 && percent >= 77.0){
            super.grade = "2.75 ~ 2.99";
        }else if(percent < 77.0 && percent >= 75.0){
            super.grade = "3.00 ~ 3.99";
        }else if(percent < 75.0){
            super.grade = "NC ~ 5.0";
        }
        
        return grade;
    }
    
    
    
}
