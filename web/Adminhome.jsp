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
                font-family:Times new Roman;
                text-align: center;
                font-size:60px;
                color: #cc5200 ;
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
                color: #003366;
                background-color: #cce6ff;
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

            <h3>MAS HOLDINGS (PvtLtd)</h3>
            <h4> Leave Management System</h4 >
        </div>


        <div class="box col-12">
            <ul id="navigation">
                <li class="selected">
                    <a href="Home.jsp">Home</a>
                </li>


                <li> 
                    <a href="approve.jsp">Approve Leave</a>
                </li>


                <%if (session.getAttribute("uid") != null) {%>
                <li> 
                    <a href="logout.jsp">Logout</a>
                </li>
                <%} else {%>
                <li> 
                    <a href="index.html">Login</a>
                </li>
                <%}%>
            </ul>
        </div>

        <br></br>

    <center>
        <%if (session.getAttribute("name") != null) {%>
        <font size="3" color="#ffffff"><h1>Hi </font><%out.println(request.getParameter("name"));%>!</h1> 
        <%} else {%>
        <font size="3" color="#ffffff"><h1>Hello..!</h1></font>
        <%}%>
        <font size="3" color="#ffffff"><h2> Welcome to Our Company</h2></font>
    </center>
    <br></br>
    <div class="footer  col-12">

        &copy;MAS HOLDINGS (PvtLtd)
    </div>
</body>
</html>