<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/card.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>

<body style="background-color: bisque;">

    <!--NAVBAR-->
    <header>
      <div class="logo">
          <a href="home.jsp"><img src="image/logo.png" ></a>
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

    <!--MENU 1-->
    <div class="main">
        <ul class="cards">
          <li class="cards_item">
            <div class="card">
              <div class="card_image">
                <img src="image/matcha2.png">
              </div>
              <div class="card_content">
                <h2 class="card_title">Matcha Latte</h2>
                <p class="card_text">Drinks<br>Rp 40.000</p>
                
                <button type="button" class="btn"style="background-color:#F3DEBA; text-color:black;" data-bs-toggle="modal" data-bs-target="#popup1" onclick="popup1()">
                  DETAIL MENU
                </button>

                <div class="modal fade" id="popup1" tabindex="-1" aria-labelledby="popup1Label" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="popup1Label" style="margin: 0px 120px;"><b>Matcha Latte</b></h5>
                      </div>

                      <div class="modal-body">
                        <img src="image/matcha2.png" class="img-fluid" alt="Gambar 1" style="width: 70%; margin-left: 65px;" >
                        <br>
                        <p class="hey" style="font-size: medium; text-align: justify;"><b>Matcha Latte</b> is made with green tea powder and steamed milk. 
                          Matcha replaces the espresso in a traditional cafe latte, giving it a brilliant green color and lightly bitter flavor. 
                          Most coffeeshops offer a hot and iced version of this drink.<br><br> <b>Rp 40.000</b> </p>
                      </div>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>
          

          <!--MENU 2 -->
          <li class="cards_item">
            <div class="card">
              <div class="card_image"><img src="image/caramel.png"></div>
              <div class="card_content">
                <h2 class="card_title">Caramel Macchiato</h2>
                <p class="card_text">Drinks<br>Rp 60.000</p>
                
                <button type="button" class="btn" style="background-color:#F3DEBA;" data-bs-toggle="modal" data-bs-target="#popup2" onclick="popup2()">
                  DETAIL MENU
                </button>

                <div class="modal fade" id="popup2" tabindex="-2" aria-labelledby="popup2Label" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="popup1Label" style="margin: 0px 170px;">Caramel Macchiato</h5>
                        
                      </div>
                      <div class="modal-body">
                        <img src="image/caramel.png" class="img-fluid" alt="Gambar 1" style="width: 70%; margin-left: 80px;" >
                        <p class="hey" style="font-size: medium;">Caramel Macchiato is a coffee drink that is made from espresso and steamed milk, 
                          with added vanilla syrup. It is usually served with a layer of foam on top and finished with a drizzle of caramel sauce.
                          <br><br> <b>Rp 60.000</b> </p>
                      </div>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <!--MENU 3 -->
          <li class="cards_item">
            <div class="card">
              <div class="card_image"><img src="image/frappu.png"></div>
              <div class="card_content">
                <h2 class="card_title">Frappuccino</h2>
                <p class="card_text">Drinks<br>Rp 50.000</p>

                <button type="button" class="btn " style="background-color:#F3DEBA;" data-bs-toggle="modal" data-bs-target="#popup3" onclick="popup3()">
                  DETAIL MENU
                </button>

                <div class="modal fade" id="popup3" tabindex="-3" aria-labelledby="popup3Label" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="popup3Label" style="margin: 0px 170px;">Frappuccino</h5>
                        
                      </div>
                      <div class="modal-body">
                        <img src="image/frappu.png" class="img-fluid" alt="Gambar 3" style="width: 70%; margin-left: 80px;" >
                        <p class="hey" style="font-size: medium;">Frappuccino is a trademarked blended iced coffee drink from Starbucks. 
                          This drink has a coffee or cr�me base that is blended with ice and ingredients like flavors, syrups, spices, and whipped cream. 
                          <br><br> <b>Rp 50.000</b> </p>
                      </div>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <!--MENU 4 -->
          <li class="cards_item">
            <div class="card">
              <div class="card_image"><img src="image/croissant.png"></div>
              <div class="card_content">
                <h2 class="card_title">Croissant</h2>
                <p class="card_text">Foods<br>Rp 80.000</p>

                <button type="button" class="btn " style="background-color:#F3DEBA;" data-bs-toggle="modal" data-bs-target="#popup4" onclick="popup4()">
                  DETAIL MENU
                </button>

                <div class="modal fade" id="popup4" tabindex="-4" aria-labelledby="popup4Label" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="popup4Label" style="margin: 0px 170px;">Croissant</h5>
                        
                      </div>
                      <div class="modal-body">
                        <img src="image/croissant.png" class="img-fluid" alt="Gambar 1" style="width: 70%; margin-left: 80px;" >
                        <p class="hey" style="font-size: medium;">Croissant is a laminated, yeast-leavened bakery product that contains dough/roll-in fat layers to create a flaky, crispy texture. Croissants belong to the Viennoiserie or pastry category of baked goods along with brioche, Danish and puff pastries.  
                          <br><br> <b>Rp 80.000</b> </p>
                      </div>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <!--MENU 5 -->
          <li class="cards_item">
            <div class="card">
              <div class="card_image"><img src="image/pan.png"></div>
              <div class="card_content">
                <h2 class="card_title">Pancake</h2>
                <p class="card_text">Foods <br>Rp 50.000</p>
                
                <button type="button" class="btn " style="background-color:#F3DEBA;" data-bs-toggle="modal" data-bs-target="#popup5" onclick="popup5()">
                  DETAIL MENU
                </button>

                <div class="modal fade" id="popup5" tabindex="-5" aria-labelledby="popup5Label" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="popup1Label" style="margin: 0px 170px;">Pancake</h5>
                        
                      </div>
                      <div class="modal-body">
                        <img src="image/pan.png" class="img-fluid" alt="Gambar 5" style="width: 70%; margin-left: 80px;" >
                        <p class="hey" style="font-size: medium;">Pancake is a thin, flat, circular piece of cooked batter made from milk, flour, and eggs. 
                          Pancakes are often rolled up or folded and eaten hot with a sweet or savoury filling inside.  
                          <br><br> <b>Rp 50.000</b> </p>
                      </div>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <!--MENU 6 -->
          <li class="cards_item">
            <div class="card">
              <div class="card_image"><img src="image/kentang.png"></div>
              <div class="card_content">
                <h2 class="card_title">French Fries</h2>
                <p class="card_text">Foods <br> Rp 40.000</p>
                
                <button type="button" class="btn " style="background-color:#F3DEBA;" data-bs-toggle="modal" data-bs-target="#popup6" onclick="popup6()">
                  DETAIL MENU
                </button>

                <div class="modal fade" id="popup6" tabindex="-6" aria-labelledby="popup6Label" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="popup1Label" style="margin: 0px 170px;">French Fries</h5>
                        
                      </div>
                      <div class="modal-body">
                        <img src="image/kentang.png" class="img-fluid" alt="Gambar 6" style="width: 70%; margin-left: 80px;" >
                        <p class="hey" style="font-size: medium;">Frappuccino is a trademarked blended iced coffee drink from Starbucks. 
                          This drink has a coffee or cr�me base that is blended with ice and ingredients like flavors, syrups, spices, and whipped cream. 
                          <br><br> <b>Rp 50.000</b> </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
            
<!--FOOTER-->
<footer class="col-12 footer" >
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
  <div class="col-12 container2">
      <small>Copyright &copy; 2023 - CAFETA. All Rights Reserved.</small>
  </div>
</footer>

 <!--JS-->
 <script>
  $(document).ready(function () {
      $(".menu-toggle").click(function () {
          $('nav').toggleClass('active');
      })
  })

    function popup1() {
			$('#popup1').modal('show');
		}
    function popup2() {
			$('#popup2').modal('show');
		}
    function popup3() {
			$('#popup3').modal('show');
		}
    function popup4() {
			$('#popup4').modal('show');
		}
    function popup5() {
			$('#popup5').modal('show');
		}
    function popup6() {
			$('#popup6').modal('show');
		}
</script>

</body>

</html> 