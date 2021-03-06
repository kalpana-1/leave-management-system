<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Leave Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>

            @font-face {
                font-family: 'Arvo-Regular';
                src: url('../fonts/Arvo-Regular.eot');
                src: local('?'),  url('../fonts/Arvo-Regular.woff') format('woff'),  url('../fonts/Arvo-Regular.ttf') format('truetype'),  url('../fonts/Arvo-Regular.svg') format('svg');
                font-weight: normal;
                font-style: normal;
            }
            body{
                background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.5)), url('image/1.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment:fixed;
                background-position : center center;


            } 
            [class*="col-"]{
                float:left;
                padding:10px;
                height:25%;
            }
            *{
                box-sizing: border-box;
            }

            .col-1 {width: 8.33%;} 
            .col-2{width :16.66%; }
            .col-3 {width : 25%; }
            .col-4 {width:33.33%;} 
            .col-5 {width : 41.66%;} 
            .col-6{ width : 50%; }
            .col-7 {width : 58.33%;} 
            .col-8 {width : 66.66%;} 
            .col-9 {width :75%; }
            .col-10{width: 83.33%;} 
            .col-11 {width :91.66%;}
            .col-12 {width : 100%;} 

            .row{
                content:"";
                clear:both;
                display:table;
            }
            .header{
                background-color:#dcdcdc;
                background-image: url("image/trs.jpg");
                filter:alpha(opacity=80);
                height:200px;
                border-radius: 25px 25px 0px 0px;
                font-family:Brush Script MT;
                font-size:60px;
                color: #e67e22 ;
                padding:1px;
                line-height:0.5px;			
            }
            #navigation {
                display: inline-block;
                list-style: none;
                width: 800px;
                margin: 7px 10px 3px 0;
                padding: 0;
            }
            #navigation li {
                float: left;
                margin-left: 10px;
            }
            #navigation li:first-child {
                margin-left: 0;
            }
            #navigation li a {
                color: #004d4d;
                font-family: Algerian;
                font-size: 18px;
                line-height: 25px;
                padding: 6px 15px;
                text-decoration: none;
            }
            #navigation li a:hover, #navigation li.selected a {
                color: #ff00ff;
                background-color: #66ffb3;
                border-radius: 5px;
            }

            .box{
                background-color:  #20b2aa;
                font-family:Algerian;
                font-size:25px;
                color:black;
                height: 50px;
            }


            .con{
                background-color:  lightgray;
                font-family:Arvo-Regular;
                font-size:25px;
                color:black;
                border: 2px solid black; 
                border-radius: 25px 25px 25px 25px;

            }

            .footer {

                height :25px;
                text-decoration: italic; 
                text-align : center ;
                background-color: #20b2aa;

            }

        </style>
    </head>

    <body>
        <div class="header col-12 ">

            <h1> Leave Management System</h1>
        </div>


        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/leave", "root", "");
                Statement stmt = con.createStatement();

                if (username.equals("kalpana") && password.equals("kalpana")) {
                    response.sendRedirect("Adminhome.jsp");
                } else {
                    out.println("<p>Invalid Login, Try with Correct Username and Password</p>");
                }

                if (username != "kalpana") {
                    String query = "select * from employee_details where username='" + username + "' and password='" + password + "'";
                    ResultSet rs = stmt.executeQuery(query);
                    rs = stmt.executeQuery(query);
                    if (rs.next()) {
                        session.setAttribute("uid",rs.getString("id"));
                        response.sendRedirect("index.jsp?user="+rs.getString("firstname"));
                    } else {
                        out.println("<p>Invalid Login, Try with Correct Username and Password</p>");
                    }
                }

            } catch (Exception e) {
                out.println("<p>ERROR:" + e.getMessage() + "</p>");
            }


        %>

        <br></br>



        <br></br>
        <div class="footer  col-12">

            &copy;MAS HOLDINGS (PvtLtd)
        </div>
    </body>
</html>