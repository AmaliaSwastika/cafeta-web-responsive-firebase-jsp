<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
</head>

<body >

    <!--NAVBAR-->
    <header>
        <div class="logo">
            <a href="index.jsp">
                <img src="image/logo.png" >
            </a>
        </div>
        <nav>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="menu.jsp" >Menu</a></li>
                <li><a href="Outlet.jsp">Outlets</a></li>
                <li><a href="Reservasi.jsp">Reservation</a></li>
                <li><a href="login.jsp">Logout</a>
            </ul>
        </nav>
        <div class="menu-toggle">
            <i class="fa fa-bars"></i>
        </div>
    </header>

    <!--HOME-->
    <section class="home">
        <div class="home-text">
            <h3>Welcome To</h3>
            <h1>CAFETA</h1>
            <h2 >Coffee makes life better!</h2>
        </div>
        <div>
            <img src="image/cup.png" class="home-img" >
        </div>
    </section>

    <!--ABOUT-->
    <section class="about" >
        <div class="heading">
            <center>
                <h1>ABOUT</h1>
            </center>
        </div>
        <div class="container">
            <div>
                 <img src="image/about.png" class="about-img">
            </div>
            <div class="about-text">
                <h2>Cafeta is a type of restaurant or eatery that typically serves beverages and food. 
                    Cafes often have a cozy and relaxed atmosphere where people can socialize, 
                    work, read, or simply enjoy a cup of coffee.
                </h2>
                <br>
            </div>
        </div>
    </section>

    <!--FOOTER-->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Home</h4>
                    <ul>
                        <li><a href="menu.jsp">Menu</a></li>
                        <li><a href="Outlet.jsp">Outlets</a></li>
                        <li><a href="Reservasi.jsp">Reservation</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Follow Us</h4>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container2">
            <small>Copyright &copy; 2023 - CAFETA. All Rights Reserved.</small>
        </div>
   </footer>

    <!--JS-->
    <script src="js/jquery.js"></script>
        <script>
            $(document).ready(function () {
                $(".menu-toggle").click(function () {
                    $('nav').toggleClass('active');
                })
            })
    </script>
    
</body>

</html>