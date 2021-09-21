<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        
        body {
        font-family: Arial, Helvetica, sans-serif;
        }
        
        .footer{
            background-color: #FFA533; 
            padding-left: 3%;
        }
        <!-- logo #EEAE36 darker #FF8F00 lighter #FFA533-->
        .icon-bar {
        width: 100%;
        background-color: rgb(255, 255, 255);
        overflow: auto;
        }

        .icon-bar a {
        float: left;
        width: 25%;
        text-align: center;
        padding: 12px 0;
        transition: all 0.3s ease;
        color: #bbb;
        font-size: 25px;
        }

        .icon-bar a:hover {
        background-color: white;
        }

        .active {
        background-color:  #aaa;
        }

        /* Slideshow container */
        .slideshow-container {
        max-width: 1250px;
        position: relative;
        margin: auto;
        }

        /* Hide the images by default */
        .mySlides {
        display: none;
        }

        /* Next & previous buttons */
        .prev, .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        margin-top: -22px;
        padding: 16px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
        user-select: none;
        }

        /* Position the "next button" to the right */
        .next {
        right: 0;
        border-radius: 3px 0 0 3px;
        }

        /* On hover, add a black background color with a little bit see-through */
        .prev:hover, .next:hover {
        background-color: rgba(0,0,0,0.8);
        }

        /* Caption text */
        .text {
        color: #f2f2f2;
        font-size: 15px;
        padding: 8px 12px;
        position: absolute;
        bottom: 8px;
        width: 100%;
        text-align: center;
        background-color: rgba(0,0,0,0.4);
        }

        /* The dots/bullets/indicators */
        .dot {
        cursor: pointer;
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
        }

        .active, .dot:hover {
        background-color: #717171;
        }

        /* Fading animation */
        .fade {
        -webkit-animation-name: fade;
        -webkit-animation-duration: 1.5s;
        animation-name: fade;
        animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
        from {opacity: .4}
        to {opacity: 1}
        }

        @keyframes fade {
        from {opacity: .4}
        to {opacity: 1}
        }
        

        * {
        box-sizing: border-box;
        }
        /* Create two equal columns that floats next to each other */
        .column4 {
        float: left;
        width: 100%;
        padding: 10px;
        }

        /* Clear floats after the columns */
        .row:after {
        content: "";
        display: table;
        clear: both;
        }

        /* Float four columns side by side */
        .column {
        float: left;
        width: 33.33333%;
        padding: 0 10px;
        }

        /* Remove extra left and right margins, due to padding in columns */
        .row {
            margin: 0 -5px;

        }

        /* Clear floats after the columns */
        .row:after {
        content: "";
        display: table;
        clear: both;
        }

        /* Style the counter cards */
        .card {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
        padding: 16px;
        text-align: center;
        background-color: #f1f1f1;
        }

        /* Responsive columns - one column layout (vertical) on small screens */
        @media screen and (max-width: 1000px) {
        .column {
            width: 100%;
            display: block;
            margin-bottom: 20px;
        }
        }

        
        
    </style>
    
</head>

<body >
<div style="text-align: center;">
<img src="img/ECONYNflat.png" >
</div>
<div class="icon-bar">
    <!-- Awesome 4 icons-->
    <a class="active" href="landingPage.jsp"><i class="fa fa-home"> <span style="font-family: Arial, Helvetica, sans-serif;">Home</span></i></a> 
    <a class="active" href="#"><i class="fa fa-user-circle-o"> <span style="font-family: Arial, Helvetica, sans-serif;"> Application</span></i></a> 
    <a class="active" href="spec.jsp"><i class="fa fa-list" ><span style="font-family: Arial, Helvetica, sans-serif;"> Products</span></i></a> 
    <a class="active" href="form.jsp"><i class="fa fa-envelope"><span style="font-family: Arial, Helvetica, sans-serif;"> Contact us</span></i></a> 
   
</div>
<br/>
<br/>
<div id="slideGroup">
<!-- Slideshow container -->
    <div class="slideshow-container">

        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
        <img src="img/climbing.jpg" style="width:100%">
        <div class="text"><h1>True Performance</h1>
        <h3>Professional sportswear brings us greater comfort while doing exercise, enabling the wearer to concentrate on peak performance.</h3></div>
        </div>
        
        <div class="mySlides fade">
        <img src="img/athleticWear.jpg" style="width:100%">
        <div class="text" ><h1>Break The Rule, <h1><h3>Make Things Possible.<h3></div>
        </div>
    
        <div class="mySlides fade">
        <img src="img/yoga.jpg" style="width:100%">
        <div class="text"><h1>Athleisure</h1><h3>Athleisure has already become a type of lifestyle nowadays which combines exercise and leisure concepts.</h3>
        </div>
        </div>
    

    
        <!-- Next and previous buttons -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br>
    
    <!-- The dots/circles -->
    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>
</div>
<br/>
<h1 style="text-align: center">產品列表</h1>
<h3 style="text-align: center">Products</h3>
<br/>
<div class="row">
  <div class="column4" style="background-color:#ff8f00;" >
    <h2>Nylon6 (PA6) Polymers</h2>
    <p>We provide diversified product combinations to be suitable for the needs of spinning and engineering plastic usages.</p>
    <a href="spec.jsp"><i>Read more....</i></a>
  </div>
  <div class="column4" style="background-color:#ffa533;" >
    <h2>Nylon6 (PA6) Filament Yarn</h2>
    <p>In-house supply of raw materials (PA6 resin). The vertical integration allows diverse products and the advantages of consistent quality.</p>
    <a href="#"><i>Read more....</i></a>
  </div>
  <div class="column4" style="background-color:#ffd49e;" >
    <h2>Nylon6 / Polyester DTY</h2>
    <p>We have function yarn, high stretch yarn, fancy yarn, co-textured yarn, different section, multifilament.</p>
    <a href="#"><i>Read more....</i></a>  
  </div>
  <div class="column4" style="background-color:#ffefda;" >
    <h2>PA Compound</h2>
    <p>Targeting the electronics, electrical machinery, and auto parts composites markets.</p>
    <a href="#"><i>Read more....</i></a> 
  </div>
</div>
<br/>
<h1 style="text-align: center;">Company Info.</h1>
<div class="row">
    <div class="column">
      <div class="card">
        <img src="img/building.png" alt="" style="width: 33.333333333%">
        <div class="container">
        <h4><b>公司動態</b></h4>
        <p>Latest News</p>
        </div>
      </div>
    </div>
    <div class="column">
      <div class="card">
        <img src="img/planet-earth.png" alt="" style="width:33.333333333%">
        <div class="container">
        <h4><b>參展資訊</b></h4>
        <p>Exhibitions</p>
        </div>
      </div>
    </div>
    <div class="column">
      <div class="card">
        <img src="img/headhunting.png" alt="" style="width:33.333333333%">
        <div class="container">
        <h4><b>人才招募</b></h4>
        <p>Join us</p>
        </div>
      </div>
    </div>
    </div>
<br/>
    <div class="row">
    <div class="column">
        <div class="card">
        <img src="img/location.png" alt="" style="width: 33.333333333%">
        <div class="container">
        <h4><b>生產據點</b></h4>
        <p>Locations</p>
        </div>
        </div>
    </div>
    <div class="column">
        <div class="card">
        <img src="img/group.png" alt="" style="width:33.333333333%">
        <div class="container">
        <h4><b>企業社會責任</b></h4>
        <p>CSR</p>
        </div>
        </div>
    </div>
    <div class="column">
        <a href="form.jsp"><div class="card" id="inquiry" onmousedown="divMouseDown()" onmouseup="divMouseUp()">
        <img src="img/list-document-interface-symbol.png" alt="" style="width:33.333333333%">
        <div class="container">
        <h4><b>詢價專區</b></h4>
        <p>Inquiry</p></a>
        </div>
        </div>
    </div>
</div>
<br/>

<br/>
<footer>
    <div class="footer">
        <img src="img/ECONYNflat.png"><br/>
           ECONYN Co., Ltd. <br/>
           TEL：02-29383355#8818 <br/>
           Copyright © 2021 ECONYN Inc. 保留一切權利。All Rights Reserved<br/>
            <br/>
    </div>
</footer>



<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    // Next/previous controls
    function plusSlides(n) {
    showSlides(slideIndex += n);
    }

    // Thumbnail image controls
    var slideIndex = 1;
    showSlides(slideIndex);

    // Next/previous controls
    function plusSlides(n) {
    showSlides(slideIndex += n);
    }
    
    function currentSlide(n) {
    showSlides(slideIndex = n);
    }

    function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    }
	
    // 20. 撰寫 function divMouseDown()，將 div1 的 boxShadow 設定為 "2px 2px 12px #888888"
   function divMouseDown() {
      var myDiv = document.getElementById("inquiry");
      myDiv.style.boxShadow = "-2px -2px 12px #888888 inset";
  }

  // 30. 撰寫 function divMouseUp() ，將 div1 的 boxShadow 設定為 "-2px -2px 12px #888888 inset"
  function divMouseUp() {
      var myDiv = document.getElementById("inquiry");
      myDiv.style.boxShadow = "2px 2px 12px #888888";
  }

</script>

</body>
</html>