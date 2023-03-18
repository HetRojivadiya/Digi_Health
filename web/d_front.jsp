<%-- 
    Document   : d_front
    Created on : 16-Mar-2023, 11:49:01 pm
    Author     : kanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style_1.css">
     
    </head>
    <body>

        <!-- header section starts  -->

        <header>

            <div class="user">
                <img src="https://cdn1.vectorstock.com/i/1000x1000/14/80/doctor-web-icon-therapist-avatar-vector-18531480.jpg" alt="">
                <h3 class="name"><span>Dr. Jimish Khokhar</span></h3>
                <p class="post">Cardiologists</p>
            </div>

            <nav class="navbar">
                <ul>
                    <li><a href="#home">home</a></li>
                    <li><a href="add.jsp">Add New Patient</a></li>
                    <!--            <li><a href="#education">education</a></li>
                                <li><a href="#portfolio">portfolio</a></li>
                                <li><a href="#contact">contact</a></li>-->
                </ul>
            </nav>

        </header>

        <!-- header section ends -->

        <!-- home section starts  -->
       
<form action="test">    
  <div style="width:600px;margin:auto; display:flex" class="input-group">
    <input style="height:50px;width:400px;margin:10px;font-size:20px;border-radius:8px;padding-left:8px;" type="text"  class="form-control" name="pid" placeholder="Search Aadhar Card Of Patient" >
    <div class="input-group-btn">
        <button  type="submit" style="height:50px;margin-top:10px;border-radius:8px;width: 80px;background-color: lightgreen" >
        Search 
      </button>
    </div>
  </div>
</form>







        




        <%
            if (session.getAttribute("name") != null) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/het", "root", "");
                    String query = new String("select * from p_record where aadhaar=" + session.getAttribute("name") + "");
                    Statement stat = con.createStatement();
                    ResultSet rs = stat.executeQuery(query);


        %>

        <h1 style="color:white;text-align: center;font-size: 50px">
            Patient id:<%=session.getAttribute("name")%>
        </h1>



        <div class="accordion" id="accordionExample">
            <%

                int num = 1;
                int count = 0;

                while (rs.next()) {
                    count++;
            %>

            <div class="card" >
                <div class="card-header">

                    <div style="display:flex;">
                        <h2 class="mb-0">
                            <button class="btn btn-link"   type="button" data-toggle="collapse" >

                                <%=rs.getString(1)%>. <%=rs.getString(3)%>
                            </button>
                        </h2>
                        <h2 class="mb-0" style="margin-left:auto">
                            <button class="btn btn-link" type="button" data-toggle="collapse" >

                                <%=rs.getString(5)%>
                            </button>
                        </h2>
                    </div>


                </div>
                <div  class="collapse show"  data-parent="#accordionExample">
                    <div class="card-body" style="font-size:20px">
                        <span style="color:#f9ca24"><b>Medicines Prescribed:</b></span><span style="color:white"><%=rs.getString(4)%></span>

                    </div>
                </div>

                <div  class="collapse show"  data-parent="#accordionExample">
                    <div class="card-body" style="font-size:20px">
                        <span style="color:#f9ca24"><b>Medical Reports:</b></span><span style="color:white"><%=rs.getString(6)%></span> 

                    </div>
                </div>  


            </div>




            <!--            <div style="display:flex;justify-content: center;">
                                <div  style="display: flex;justify-content: center ;margin-top: 10px;margin-bottom: 10px;margin-left:10px ;background-color:#f9ca24;width: 70%;height:35px;overflow: hidden;border-radius:10px ">
                                    <p style="font-size: 30px; "></p>
                                </div>
                                <div style="display: flex;justify-content: center;background-color: white; margin-left: -10px;border-radius:0px 10px 10px 0px;height:35px;margin-top: 10px;text-align: center">
                                     <p style="display: flex;justify-content: center;font-size: 23px;color: black;text-align: center">Age:</p>
                                </div>
                        </div>-->
            <%

                    num++;
                }

            %>
        </div>
        <%            if (count == 0) {
        %><h1 style="color:#f9ca24;text-align: center;font-size: 30px">
            No Records!
        </h1> <%
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {

        %><h1 style="color:#f9ca24;text-align: center;font-size: 30px">
            Please Enter Valid Inputs!
        </h1> <%                          }

            }


        %> 




        <!-- jquery cdn link  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <!-- custom js file link  -->
        <script src="js/script.js"></script>


    </body>
</html>
