<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reschedule</title>
    
    <!-- Bootstrap CSS -->
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
  
  <!--RESCHEDULE-->
    <div class="container" style="margin-top: 80px;">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <h2 class="text-center font-weight-bold">R E S C H E D U L E</h2>
          <p class="text-justify">Apabila anda sudah reservasi, tetapi ingin ganti outlet, waktu, tanggal. 
            Mencari reservasi anda menggunankan nomor antrian dibawah ini. Tinggal rubah yang anda inginkan, 
            Apabila anda membatalkan reservasi klik cancel</p>
        </div>
      </div>

      <div class="row justify-content-center">
        <div class="col-md-6">

          <div class="form-group">
            <input type="text" class="form-control" id="searchInput" style="border-style:solid; border-color: #675D50;"  placeholder="Search Email..">
          </div>

          <button type="button" class="btn btn-primary" style="background-color: #675D50;"  onclick="searchData()">SEARCH RESERVATION</button>
          <br><br>

          <div class="form-group">
            <label for="inputText1">Full Name</label>
            <input type="text" class="form-control" id="nama" required style="border-style:solid; border-color: #675D50;" id="inputText1" placeholder="Enter your Full Name..">
          </div>

          <div class="form-group">
            <label for="inputText2">Email</label>
            <input type="text" id="email" required class="form-control" style="border-style:solid; border-color: #675D50;" id="inputText2" placeholder="Enter your Email..">
          </div>

          <div class="form-group">
            <label for="inputText3">Number Phone</label>
            <input type="text" id="nohp" required class="form-control" style="border-style:solid; border-color: #675D50;" id="inputText3" placeholder="Enter your Number Phone..">
          </div>

          <div class="form-group">
            <label for="selectBox1">Outlets</label>
              <select  class="col-12 form-control" id="outlet" required style="border-style:solid; border-color: #675D50;"id="selectBox1">
                <option>Jaguar Cafe</option>
                <option>Specta Cafe</option>
                <option>Cafe Gemialng</option>
                <option>Garden Cafe</option>
                <option>Rame Rame Cafe</option>
                <option>Kongkow Cafe</option>
              </select>
          </div>

          <div class="form-group">
            <label for="selectBox2">Adult</label>
              <select  class="form-control" id="adult" required style="border-style:solid; border-color: #675D50;">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>                
              </select>
          </div>

          <div class="form-group">
            <label for="dateInput">Date</label>
              <input type="date" class="form-control" id="date" name="dateInput" required style="border-style:solid; border-color: #675D50;" name="dateInput">
          </div>

          <div class="form-group">
            <label for="selectBox4">Time</label>
              <select  class="form-control" id="time" required style="border-style:solid; border-color: #675D50;">
                <option>11:00</option>
                <option>12:00</option>
                <option>13:00</option>
                <option>14:00</option>
                <option>15:00</option>
                <option>16:00</option>
                <option>17:00</option>
                <option>18:00</option>
                <option>19:00</option>
                <option>20:00</option>
                <option>21:00</option>
                <option>22:00</option>
              </select>
          </div>

          <div class="form-group">
            <input type="hidden" id="key">

            <button class="btn btn-primary" style="background-color: #675D50;"  onclick="update_user()">RESCHEDULE</button>
            <br><br>
            <button class="btn btn-primary" style="background-color: #675D50;" onclick="delete_user()">DELETE</button>
          </div>
        </div>
      </div>
    </div>

<script>

var firebaseConfig = {
        apiKey: "AIzaSyDjIblRIjq8eQytnc3fUP7LQ16uwPx73lU",
        authDomain: "cafe-b9081.firebaseapp.com",
        databaseURL:"https://cafe-b9081-default-rtdb.firebaseio.com",
        projectId: "cafe-b9081",
        storageBucket: "cafe-b9081.appspot.com",
        messagingSenderId: "85348453074",
        appId: "1:85348453074:web:35d15c79ee2fc900997b0b",
        measurementId: "G-NJ5HTSTV9R"
      };

    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);

    function searchData() {
        var searchValue = document.getElementById("searchInput").value;

        // Reference to your Firebase database node
        var databaseRef = firebase.database().ref('reservation/');

        // Query data based on the "nama" field
        databaseRef.orderByChild("email").equalTo(searchValue).once("value").then(function(snapshot) {
          var data = snapshot.val();

          // Check if data exists
          if (data) {
            // Iterate through the results
            snapshot.forEach(function(childSnapshot) {
              var childKey = childSnapshot.key;
              var childData = childSnapshot.val();

              // Set the values to the form fields
              document.getElementById('nama').value = childData.nama;
              document.getElementById('email').value = childData.email;
              document.getElementById('nohp').value = childData.nohp;
              document.getElementById('outlet').value = childData.outlet;
              document.getElementById('adult').value = childData.adult;
              document.getElementById('date').value = childData.date;
              document.getElementById('time').value = childData.time;

              // Store the key of the data for updating and deleting
              document.getElementById('key').value = childKey;
            });
          } else {
            // Clear the form fields
            document.getElementById('nama').value = "";
            document.getElementById('email').value = "";
            document.getElementById('nohp').value = "";
            document.getElementById('outlet').value = "";
            document.getElementById('adult').value = "";
            document.getElementById('date').value = "";
            document.getElementById('time').value = "";
            document.getElementById('key').value = "";
            alert("No data found.");
          }
        }).catch(function(error) {
          console.log("Error retrieving data: " + error.message);
        });
      }
    
    function update_user() {
        var nama = document.getElementById('nama').value;
        var email = document.getElementById('email').value;
        var nohp = document.getElementById('nohp').value;
        var outlet = document.getElementById('outlet').value;
        var adult = document.getElementById('adult').value;
        var date = document.getElementById('date').value;
        var time = document.getElementById('time').value;
        if (nama === '' || email === '' || nohp === '' || outlet === '' || adult === '' || date === '' || time === '') {
			    alert('Please fill in all fields.');
			    return;
    			  }
        var uid = document.getElementById('key').value; // Get the value of the 'key' input field

        var data = {
          nama: nama,
          email: email,
          nohp: nohp,
          outlet: outlet,
          adult: adult,
          date: date,
          time: time,
        };

        var updates = {};
        updates['/reservation/' + uid] = data;
        firebase.database().ref().update(updates);

        alert('Reservation Anda Telah di Update!');

        reload_page();
      }

    function delete_user() {
       var uid = document.getElementById('key').value; // Get the value of the 'key' input field

        firebase.database().ref().child('/reservation/' + uid).remove();
        alert('Reservation Anda Telah dibatalkan!');
        reload_page();
      }

      function reload_page() {
        window.location.reload();
      }

function validate() {
$('#validationModal').modal('show');
}
function showNotification() {
$('#validationModal').modal('hide');
$('#notificationModal').modal('show');
}

</script>
      
  <!--FOOTER-->
  <div class="row">
    <footer class="footer" style="width: 100%; margin-top: 50px;">
      <div class="container">
          <div class="row">
              <div class="footer-col">
                  <h4 style="margin-left: 40px;">Home</h4>
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
</div>

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
          <li><a href="Reservasi.jspl">Reservation</a></li>
          <li><a href="login.jsp">Logout</a>
      </ul>
  </nav>
  <div class="menu-toggle">
    <i class="fa fa-bars"></i>
  </div>
</header>          

<!--JS-->
<script src="js/reschedule.js"></script>
<script src="js/jquery.js"></script>
<script>
    $(document).ready(function () {
        $(".menu-toggle").click(function () {
            $('nav').toggleClass('active');
        })
    })
</script>

<script>
function validate() {
	$('#validationModal').modal('show');
	}
	function showNotification() {
	$('#validationModal').modal('hide');
	$('#notificationModal').modal('show');
	}
</script>

</body>

</html>