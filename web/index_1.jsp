<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>responsive personal portfolio website design tutorail</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/index_1.css">

</head>


<body>
    
<!-- 
header section starts  -->
<header>

    <div class="user">
        <img src="images/profile.jpg" alt="">
        <h3 class="name"><span>Dr. Jimish Khohar</span></h3>
    </div>

   ]

</header>
    <h1 style="font-size: 30px; text-align: center;background-color: white;margin-bottom: 20px">Patients' records</h1>
    
<!--    <div class="accordion" id="accordionExample">
    <div class="card">
      <div class="card-header" id="headingOne">
        <h2 class="mb-0">
          <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
            Collapsible Group Item #1
          </button>
        </h2>
      </div>

      <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
        <div class="card-body">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header" id="headingTwo">
        <h2 class="mb-0">
          <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
            Collapsible Group Item #2
          </button>
        </h2>
      </div>
      <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
        <div class="card-body">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header" id="headingThree">
        <h2 class="mb-0">
          <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
            Collapsible Group Item #3
          </button>
        </h2>
      </div>
      <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
        <div class="card-body">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
  </div>-->

<form action="test">    
  <div style="width:200px;margin:auto;" class="input-group">
    <input style="height:50px;margin:10px;font-size:10px;" type="text"  class="form-control" name="pid" placeholder="Search Aadhar Card Of Patient" >
    <div class="input-group-btn">
        <button  type="submit" style="height:50px;margin-top:10px ;width: 60px" >
        Search 
      </button>
    </div>
  </div>
</form>



    
        <%  
            if(session.getAttribute("name")!=null)
            {
               try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/patient","root", "");
                String query=new String("select * from p_record where aadhaar="+session.getAttribute("name")+"");
                Statement stat=con.createStatement();
                ResultSet rs=stat.executeQuery(query);
                
                
        %>
        
        <h1 style="color:white;text-align: center;font-size: 50px">
            Patient id:<%=session.getAttribute("name")%>
        </h1>
        
        
        
        <div class="accordion" id="accordionExample">
        <%
            
         
        
        int  num=1;
        int count=0;
        
        
        while(rs.next())
        {
            count++;
        %>
        
            <div class="card">
                <div class="card-header">
                    
                    <div style="display:flex;">
                        <h2 class="mb-0">
                            <button class="btn btn-link"   type="button" data-toggle="collapse" >

                            <%=rs.getString(1) %>. <%=rs.getString(3) %>
                          </button>
                        </h2>
                          <h2 class="mb-0" style="margin-left:auto">
                        <button class="btn btn-link" type="button" data-toggle="collapse" >

                          <%=rs.getString(5) %>
                        </button>
                  </h2>
                    </div>
                    
                    
                </div>
                 <div  class="collapse show"  data-parent="#accordionExample">
                     <div class="card-body" style="font-size:20px">
                        <span style="color:#f9ca24"><b>Medicines Prescribed:</b></span><%=rs.getString(4)%>  

                    </div>
                  </div>
                        
                  <div  class="collapse show"  data-parent="#accordionExample">
                     <div class="card-body" style="font-size:20px">
                         <span style="color:#f9ca24"><b>Medical Reports:</b></span><%=rs.getString(6)%>  

                    </div>
                  </div>  
                         
                  <div  class="collapse show"  data-parent="#accordionExample">
                     <div class="card-body" style="font-size:20px">
                         <span style="color:#f9ca24"><b>Doctor id: </b></span><%=rs.getString(7)%>  

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
        <%
       
            if(count==0)
            {
                %><h1 style="color:#f9ca24;text-align: center;font-size: 30px">
                        No Records!
                  </h1> <%
            }
           
       con.close();
        }
        catch(ClassNotFoundException | SQLException e){
            
                    %><h1 style="color:#f9ca24;text-align: center;font-size: 30px">
                        Please Enter Valid Inputs!
                  </h1> <%

                }
                

}
                
        
         %> 


<!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>



</body>
</html>