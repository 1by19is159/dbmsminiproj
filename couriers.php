<!DOCTYPE html>
<html>
<head>
<h1><span class="badge badge-secondary">Courier</span></h1>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
      
       figcaption {
        color:black;
        font-style: italic;
        padding: 5px;
        text-align: center;
      }
      * {
        box-sizing: border-box;
      }
      
      .column {
        float: left;
        width: 20%;
        padding: 20px;
      }
      
      /* Clearfix (clear floats) */
      .row::after {
        content: "";
        clear: both;
        display: table;
      }
      </style>
      
  <style>
    
     ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
       overflow:hidden;
       background-color: #FFD700;
     }
     
     li {
       float: left;
     }
     
     li a {
       display: block;
       color: black;
       text-align: center;
       padding: 14px 16px;
       font-size: large;
       text-decoration: none;
     }
     
     li a:hover {
       background-color:ghostwhite;
     }
     .checked {
    color: orange;
  }
  
     </style>
     
    
     </head>
  
  <body>
     
  <ul>
     <li><a class="active" href="home.html"><b>Home</b></a></li>
     <li><a href="courier.html"><b>Courier</b></a></li>
     <li><a href="staff.html"><b>Staff</b></a></li>
     <li><a href="schedule.html"><b>Schedule</b></a></li>
     <li><a href="delivery.html"><b>Delivery</b></a></li>
   </ul>
   <br>
  <div>
<form action="courierdetails.php" method='post'>
  <div class="container">
  <p>Booking Details</p>
<label for="date">Date:</label>
    <input type="date" id="date" name="date">
 <hr>
<h2> Send to </h2>
<label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter name" name="name" class="form-control" id="name" required>
<label for="phnumber"><b>Phone number</b></label>
    <input type="text" placeholder="Enter phone number" name="phnumber" class="form-control" id="phnumber" required>
<label for="address"><b>Address</b></label>
    <input type="text" placeholder="Enter address" name="address" class="form-control" id="address" required>
<label for="pincode"><b>Pin code</b></label>
    <input type="text" placeholder="Enter pincode" name="pincode" class="form-control" id="pincode" required>
<label for="courierweight"><b>Courier weight</b></label>
    <input type="text" placeholder="Enter courier weight" name="courierweight" class="form-control" id="courierweight" required>
<label for="couriertype"><b>Courier type</b></label>
    <input type="text" placeholder="Enter courier type" name="couriertype" class="form-control" id="couriertype" required>
<label for="amount"><b>Amount</b></label>
    <input type="text" placeholder="Enter amount" name="amount" class="form-control" id="amount"  required>
<h2> Recieve From </h2>
<label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter name" name="name" class="form-control" id="name" required>
<label for="phnumber"><b>Phone number</b></label>
    <input type="text" placeholder="Enter phone number" name="phnumber" class="form-control" id="phnumber" required>
<label for="address2"><b>Address2</b></label>
    <input type="text" placeholder="Enter address2" name="address2" class="form-control" id="address2" required>
	</hr>
	<br>


<button type="submit" class="btn btn-success">Submit</button>
</div>
</form>
</body>
</html>