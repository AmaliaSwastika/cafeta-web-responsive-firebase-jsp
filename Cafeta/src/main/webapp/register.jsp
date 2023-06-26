<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register</title>
  <link rel="stylesheet" href="css/Reservasi.css">
  <link rel="stylesheet" href="css/card.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  
  <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js"></script>
  <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script>
  <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-firestore.js"></script>
  <!-- TODO: Add SDKs for Firebase products that you want to use
  https://firebase.google.com/docs/web/setup#available-libraries -->
  <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-analytics.js"></script>
</head>

<body class="col-12" style="background-color: #F3DEBA;">

  <!--REGISTER-->
  <div class="container" style="margin-top: 120px;">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <h2 class="text-center font-weight-bold">CAFETA REGISTER</h2>
      </div>
    </div>

    <div class="row justify-content-center">
      <div class="col-md-6">

        <form id="registerForm">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" name="username" id="username" required placeholder="Input your username" class="form-control" style="border-style:solid; border-color: #675D50;"  >
        </div>

        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" required placeholder="Input your email" class="form-control"  style="border-style:solid; border-color: #675D50;" >
        </div>

        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" required placeholder="Input your password" class="form-control" style="border-style:solid; border-color: #675D50;" >
        </div>

        <button type="submit" class="btn btn-primary" style="background-color: #675D50;" >Register</button>
        
        <div>
          <span>Already have an account?
           <label><a href="login.jsp" style="color: black;">Login</a></label>
          </span>
        </div>
        </form>
      </div>
    </div>
  </div>

<!--NAVBAR-->
<header>
  <div class="logo">
      <a href="#"><img src="image/logo.png" ></a>
  </div>

  <nav>
      <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#" >Menu</a></li>
          <li><a href="#">Outlets</a></li>
          <li><a href="#">Reservation</a></li>
      </ul>
  </nav>

  <div class="menu-toggle">
    <i class="fa fa-bars"></i>
  </div>
</header>   

<!--FOOTER-->
<div class="row">
  <footer class="footer" style="width: 100%; margin-top: 65px;">
    <div class="container">
        <div class="row">
            <div class="footer-col">
                <h4 style="margin-left: 40px;">Home</h4>
                <ul>
                  <li><a href="#">Menu</a></li>
                  <li><a href="#">Outlets</a></li>
                  <li><a href="#">Reservation</a></li>
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
</div>

<!--JS-->
<script src="js/register.js"></script>
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