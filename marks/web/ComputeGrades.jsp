<%-- 
    Document   : ComputeGrades
    Created on : Dec 10, 2018, 10:18:54 AM
    Author     : Libanan
--%>

<%@page import="DesignPattern.CollegeGrade"%>
<%@page import="DesignPattern.AlphabetGrade"%>
<%@page import="java.util.*"%>
<%@page import="DesignPattern.Variables"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS</title>
    </head>
    
    <style>
        #t{
            font-family:Century Gothic;
        }
        .btn{
            font-family:Century Gothic;
            float: center;
            border-radius: 12px;
            padding: 10px;
            margin: 25px;
            font-size: 16px;
            width: 200px
        }
        .btn1{
            font-family:Century Gothic;
            float: right;
            border-radius: 12px;
            padding: 8px;
        }
        #i{
            padding: 10px;
            margin: 25px;
            font-size: 16px;
            font-family:Century Gothic;
        }
        #f1{
            width: 80%;
            border-radius: 20px;
        }
        #f2{
            width: 40%;
            border-radius: 20px;
        }
        
    </style>
    
    <%
        Variables var = new Variables();
        
        double grade = 0;
        double avgSeatwork = 0, avgQuiz = 0, avgMajorExam = 0, avgProject = 0, avgAttendance = 0, avgOthers = 0;
        double psSeatwork = 0, psQuiz = 0, psMajorExam = 0, psProject = 0, psAttendance = 0, psOthers = 0;
        double pctSeatwork = 0, pctQuiz = 0, pctMajorExam = 0, pctProject = 0, pctAttendance = 0, pctOthers = 0;
              
        String alphabetgrade = null;
        String collegegrade = null;
        
        var.id_number = request.getParameter("student_id");
        var.class_id = request.getParameter("class_id");
        //FOR sum per type
        String qry1 = "SELECT SUM(actual_score) AS sum1, SUM(perfect_score) AS sum2 FROM class_records WHERE student_id = "+var.id_number+" AND class_id = "+var.class_id+" AND type = 'Seatwork'";
        String qry2 = "SELECT SUM(actual_score) AS sum1, SUM(perfect_score) AS sum2 FROM class_records WHERE student_id = "+var.id_number+" AND class_id = "+var.class_id+" AND type = 'Quiz'";
        String qry3 = "SELECT SUM(actual_score) AS sum1, SUM(perfect_score) AS sum2 FROM class_records WHERE student_id = "+var.id_number+" AND class_id = "+var.class_id+" AND type = 'Major Exam'";
        String qry4 = "SELECT SUM(actual_score) AS sum1, SUM(perfect_score) AS sum2 FROM class_records WHERE student_id = "+var.id_number+" AND class_id = "+var.class_id+" AND type = 'Project'";
        String qry5 = "SELECT SUM(actual_score) AS sum1, SUM(perfect_score) AS sum2 FROM class_records WHERE student_id = "+var.id_number+" AND class_id = "+var.class_id+" AND type = 'Attendance'";
        String qry6 = "SELECT SUM(actual_score) AS sum1, SUM(perfect_score) AS sum2 FROM class_records WHERE student_id = "+var.id_number+" AND class_id = "+var.class_id+" AND type = 'Others'";
        //FOR percentage for each type
        String qry7 = "SELECT * FROM percentage WHERE class_id = "+var.class_id+" AND type = 'Seatwork'";
        String qry8 = "SELECT * FROM percentage WHERE class_id = "+var.class_id+" AND type = 'Quiz'";
        String qry9 = "SELECT * FROM percentage WHERE class_id = "+var.class_id+" AND type = 'Major Exam'";
        String qry10 = "SELECT * FROM percentage WHERE class_id = "+var.class_id+" AND type = 'Project'";
        String qry11 = "SELECT * FROM percentage WHERE class_id = "+var.class_id+" AND type = 'Attendance'";
        String qry12 = "SELECT * FROM percentage WHERE class_id = "+var.class_id+" AND type = 'Others'";
               
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            PreparedStatement stmt1 = var.conn.prepareStatement(qry1);
            PreparedStatement stmt2 = var.conn.prepareStatement(qry2);
            PreparedStatement stmt3 = var.conn.prepareStatement(qry3);
            PreparedStatement stmt4 = var.conn.prepareStatement(qry4);
            PreparedStatement stmt5 = var.conn.prepareStatement(qry5);
            PreparedStatement stmt6 = var.conn.prepareStatement(qry6);
            PreparedStatement stmt7 = var.conn.prepareStatement(qry7);
            PreparedStatement stmt8 = var.conn.prepareStatement(qry8);
            PreparedStatement stmt9 = var.conn.prepareStatement(qry9);
            PreparedStatement stmt10 = var.conn.prepareStatement(qry10);
            PreparedStatement stmt11 = var.conn.prepareStatement(qry11);
            PreparedStatement stmt12 = var.conn.prepareStatement(qry12);
            
            
            ResultSet rs1 = stmt1.executeQuery();
            ResultSet rs2 = stmt2.executeQuery();
            ResultSet rs3 = stmt3.executeQuery();
            ResultSet rs4 = stmt4.executeQuery();
            ResultSet rs5 = stmt5.executeQuery();
            ResultSet rs6 = stmt6.executeQuery();
            ResultSet rs7 = stmt7.executeQuery();
            ResultSet rs8 = stmt8.executeQuery();
            ResultSet rs9 = stmt9.executeQuery();
            ResultSet rs10 = stmt10.executeQuery();
            ResultSet rs11 = stmt11.executeQuery();
            ResultSet rs12 = stmt12.executeQuery();
            
            while(rs1.next()){
                avgSeatwork = rs1.getDouble("sum1");
                psSeatwork = rs1.getDouble("sum2");
            }
            
            while(rs2.next()){
                avgQuiz = rs2.getDouble("sum1");
                psQuiz = rs2.getDouble("sum2");
            }
            while(rs3.next()){
                avgMajorExam = rs3.getDouble("sum1");
                psMajorExam = rs3.getDouble("sum2");
            }
            while(rs4.next()){
                avgProject = rs4.getDouble("sum1");
                psProject = rs4.getDouble("sum2");
                
            }
            while(rs5.next()){
                avgAttendance = rs5.getDouble("sum1");
                psAttendance = rs5.getDouble("sum2");
            }
            while(rs6.next()){
                avgOthers = rs6.getDouble("sum1");
                psOthers = rs6.getDouble("sum2");
            }
            while(rs7.next()){
                pctSeatwork = rs7.getDouble("percent");
            }
            while(rs8.next()){
                pctQuiz = rs8.getDouble("percent");
            }
            while(rs9.next()){
                pctMajorExam = rs9.getDouble("percent");
            }
            while(rs10.next()){
                pctProject = rs10.getDouble("percent");
            }
            while(rs11.next()){
                pctAttendance = rs11.getDouble("percent");
            }
            while(rs12.next()){
                pctOthers = rs12.getDouble("percent");
            }
            
            double Seatwork, Quiz, MajorExam, Project, Attendance, Others;
            
            Seatwork = (avgSeatwork/psSeatwork) * pctSeatwork;
            Quiz = (avgQuiz/psQuiz) * pctQuiz;
            MajorExam = (avgMajorExam/psMajorExam) * pctMajorExam;
            Project = (avgProject/psProject) * pctProject;
            Attendance = (avgAttendance/psAttendance) * pctAttendance;
            Others = (avgOthers/psOthers) * pctOthers;
                        
            if(Double.isNaN(Seatwork)){
            }else{
                grade += Seatwork;
            }
            
            if(Double.isNaN(Quiz)){
            }else{
                grade += Quiz;
            }
            if(Double.isNaN(MajorExam)){
            }else{
                grade += MajorExam;
            }
            if(Double.isNaN(Project)){
            }else{
                grade += Project;
            }
            if(Double.isNaN(Attendance)){
            }else{
                grade += Attendance;
            }
            if(Double.isNaN(Others)){
            }else{
                grade+=Others;
            }
            
            AlphabetGrade ag = new AlphabetGrade();
            
            CollegeGrade cg = new CollegeGrade();
            
            %>
        
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <h2>Student Grade</h2>
                <b>
                <table>
                    <tr>
                        <td width="50%">Decimal Grade: </td>
                        <td width="50%"><u><%out.println(grade);%></u></td>
                    </tr>
                    <tr>
                        <td width="50%">Letter Grade: </td>
                        <td width="50%"><u><%out.println(ag.convert(grade));%></u></td>
                    </tr>
                    <tr>
                        <td width="50%">College Standard Grade: </td>
                        <td width="50%"><u><%out.println(cg.convert(grade));%></u></td>
                    </tr>
                </table>
                </b>
                        <a href="UpdateGrades.jsp?student_id=<%=var.id_number%>&grade=<%=grade%>&class_id=<%=var.class_id%>"><input type="button" class="btn" value="Upload Grade"></a><br>
                <a href="ViewStudentScores.jsp?student_id=<%=var.id_number%>&class_id=<%=var.class_id%>"><input type="button" class="btn1" value="Back to Student Scores"></a>
            </fieldset>  
        </center>
        <%
        }catch(Exception ex){
            
        }
        %>
    </body>
</html>
