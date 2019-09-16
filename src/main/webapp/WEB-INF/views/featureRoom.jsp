<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/assets/css/all.css">
  <!-- Bootstrap -->
  <link rel="stylesheet" href="/assets/css/bootstrap.css">
  <!-- Custom -->
  <link rel="stylesheet" href="/assets/css/style.css">

  <title>RF Room Finder</title>
</head>

<body>
  <!-- Top Bar -->
  <section id="top-bar" class="p-3">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <i class="fas fa-phone"></i> (9777)-01-5555
        </div>
        <div class="col-md-4">
          <i class="fas fa-envelope-open"></i> contact@rfroomfinder.co
        </div>
        <div class="col-md-4">
          <div class="social text-right">
            <a href="#">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="#">
              <i class="fab fa-facebook"></i>
            </a>
            <a href="#">
              <i class="fab fa-linkedin"></i>
            </a>
            <a href="#">
              <i class="fab fa-instagram"></i>
            </a>
            <a href="#">
              <i class="fab fa-pinterest"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
    <div class="container">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
        <img src="/img/logo.png" class="logo" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <ul class="navbar-nav">
          <li class="nav-item mr-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item active mr-3">
            <a class="nav-link" href="listings.html">Featured Listings</a>
          </li>
        </ul>

        <ul class="navbar-nav ml-auto">
          <li class="nav-item mr-3">
            <a class="nav-link" href="register.html">
              <i class="fas fa-user-plus"></i> Register</a>
          </li>
          <li class="nav-item mr-3">
            <a class="nav-link" href="login.html">
              <i class="fas fa-sign-in-alt"></i>

              Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section id="showcase-inner" class="py-5 text-white">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h1 class="display-4">Browse Our Properties</h1>
          <p class="lead">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sunt, pariatur!</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Breadcrumb -->
  <section id="bc" class="mt-3">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="index.html">
              <i class="fas fa-home"></i> Home</a>
          </li>
          <li class="breadcrumb-item active"> Browse Listings</li>
        </ol>
      </nav>
    </div>
  </section>

  <!-- Listings -->
  <section id="listings" class="py-4">
    <div class="container">
      <div class="row">

        <!-- Listing 1 -->
        
 <c:forEach items="${roomlist }" var="room">
        <c:set var="rooms" value="${fn:split(room.image, ', ')}" />  
        <div class="col-md-6 col-lg-4 mb-4">
          <div class="card listing-preview">
            <img class="card-img-top" src="images/${rooms[0]}" alt="" height="200px">
            <div class="card-img-overlay">
              <h2>
                <span class="badge badge-secondary text-white">Rs${room.price }</span>
              </h2>
            </div>
            <div class="card-body">
              <div class="listing-heading text-center">
                 <h4 class="text-primary">${room.type}</h4>
                <p>
                  <i class="fas fa-map-marker text-secondary"></i> ${room.location }</p>
              </div>
              <hr>
              <div class="row py-2 text-secondary">
                <div class="col-6">
                  <i class="fas fa-home"></i>Type: ${room.type }</div>
                <div class="col-6">
                  <i class="fas fa-parking"></i>Parking:${room.parking }</div>
              </div>
              <div class="row py-2 text-secondary">
                <div class="col-6">
                  <i class="fas fa-bed"></i>Bedroom: ${room.bedroom }</div>
                <div class="col-6">
                  <i class="fas fa-bath"></i>Bathroom:${room.bathroom }</div>
              </div>
              <hr>
              <div class="row py-2 text-secondary">
                <div class="col-6">
                  <i class="fas fa-user"></i> ${room.usersDetails.name}</div>
              </div>
              <div class="row text-secondary pb-2">
                <div class="col-6">
                  <i class="fas fa-clock"></i>Post Date: ${room.date}</div>
              </div>
              <hr>
              <a href="${pageContext.request.contextPath}/roomDetail/${room.id}" class="btn btn-primary">More Info</a>
              <a href="${pageContext.request.contextPath}/user/booking/${room.id}" class ="btn btn-primary">Booking</a>
            </div>
          </div>
        </div>
</c:forEach>
     
      </div>
    </div>
  </section>
      <div class="row">
        <div class="col-md-12">
          <ul class="pagination">
            <li class="page-item disabled">
              <a class="page-link" href="#">&laquo;</a>
            </li>
            <li class="page-item active">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">&raquo;</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer id="main-footer" class="py-4 bg-primary text-white text-center">
    Copyright &copy;
    <span class="year"></span> RF Room Finder
  </footer>

  <script src="/assets/js/jquery-3.3.1.min.js "></script>
  <script src="/assets/js/bootstrap.bundle.min.js "></script>
  <script src="/assets/js/main.js "></script>
</body>

</html>