<%-- 
    Document   : add
    Created on : 17-Mar-2023, 2:01:41 am
    Author     : kanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
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
   <style>
      
        
        /* Style inputs */
        input[type=text], select, textarea {
          width: 100%;
          padding: 12px;
          border: 1px solid #ccc;
          margin-top: 6px;
          margin-bottom: 16px;
          resize: vertical;
          background: white;
          color:black;
          
        }
        
        input[type=submit] {
          background-color: #04AA6D;
          color: white;
          padding: 10px;
          border: none;
          cursor: pointer;
          font-size: medium;  
        }
        
        input[type=submit]:hover {
          background-color: #45a049;
        }
        
        /* Style the container/contact section */
        .container1 {
          border-radius: 25px;
          background-color: #f2f2f2;
          padding: 10px;
        }
        
        /* Create two columns that float next to eachother */
        .column1 {
          float: left;
          width: 50%;
          margin-top: 6px;
          padding: 20px;
        }
        
        /* Clear floats after the columns */
        .row1:after {
          content: "";
          display: table;
          clear: both;
        }
        
        /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 600px) {
          .column1, input[type=submit] {
            width: 100%;
            margin-top: 0;
          }
        }
        </style>

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
            <li><a href="d_front.jsp">home</a></li>
            <li><a href="add.jsp">Add New Record</a></li>
            
<!--            <li><a href="#education">education</a></li>
            <li><a href="#portfolio">portfolio</a></li>
            <li><a href="#contact">contact</a></li>-->
        </ul>
    </nav>

</header>

<div class="padding" style="padding: 35px;">
    <div class="container1">
        <div style="text-align:center">
          <h2>Patient Record</h2>
          
        </div>
        <div class="row1">
          <div class="column1">
              <form action="records">
            
              <label for="fname">Name</label>
              <input type="text" id="fname" name="name" placeholder="Patient name.." style="color:black">
              <label for="lname">Addharcard Number</label>
              <input type="text"  name="addharcard" style="color:black">
              <label for="country">Country</label>
              <select id="country" name="country">
                <option value="india"> India</option>
                <option value="australia">Australia</option>
                <option value="canada">Canada</option>
                <option value="usa">USA</option>
              </select>
              <label for="subject">diseace</label>
              <textarea id="subject" name="diseace" placeholder="Write about patient diseace" style="height:170px"></textarea>
               <label for="subject">date</label>
               <input type="date" name="Odate" style="color:red">
              
            
          </div>
          <div class="column1">
            
              <label for="fname">Age</label>
              <input type="text" id="fname" name="age" placeholder="Patient age..">
              <label for="fname">Required Reports</label>
              <input type="text" id="report" name="reports">
             
             
              <label for="subject">Medicine</label>
              <textarea id="subject" name="medicine" placeholder="Write something.." style="height:170px"></textarea>
              <input type="submit" value="Add Record">
            
              </form>
          </div>
        </div>
      </div>
    </div>

<!-- This is not part of Pen -->
<a class="me" href="https://codepen.io/uzcho_/pens/popular/?grid_type=list" target="_blank" style="color:#000"></a>

<!-- home section ends -->

<!-- about section starts  -->

<!-- about section ends -->

<!-- education section starts  -->



<!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    
    function adddata()
    {
        alert("kunjan");
    }
</script>

<!-- custom js file link  -->
<script src="js/script.js"></script>


</body>
</html>
