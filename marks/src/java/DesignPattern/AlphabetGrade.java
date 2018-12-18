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
public class AlphabetGrade extends Grades implements ConvertGrade{
    
    //protected String grade;

    @Override
    public String convert(double percent) {
        
        if(percent >= 97.5){
            super.grade = "A+";
        }else if(percent < 97.5 && percent >= 92.5){
            super.grade = "A";
        }else if(percent < 92.5 && percent >= 90){
            super.grade = "A-";
        }else if(percent < 90 && percent >= 87.5){
            super.grade = "B+";
        }else if(percent < 87.5 && percent >= 82.5){
            super.grade = "B";
        }else if(percent < 82.5 && percent >= 80){
            super.grade = "B-";
        }else if(percent < 80 && percent >= 77.5){
            super.grade = "C+";
        }else if(percent < 77.5 && percent >= 72.5){
            super.grade = "C";
        }else if(percent < 72.5 && percent >= 70){
            super.grade = "C-";
        }else if(percent < 70 && percent >= 67.5){
            super.grade = "D+";
        }else if(percent < 67.5 && percent >= 62.5){
            super.grade = "D";
        }else if(percent < 62.5 && percent >= 60){
            super.grade = "D-";
        }else if(percent < 60){
            super.grade = "E";
        }
        
        return grade;
    }
    
}
