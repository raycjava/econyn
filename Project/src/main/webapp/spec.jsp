<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/project"
	user="root"
	password="root"
 />
<sql:query var="result">
	SELECT * FROM spec 
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Spec</title>
<style>

		body {
        font-family: Arial, Helvetica, sans-serif;
        }
		
		 .footer{
            background-color: #FFA533; 
            padding-left: 3%;
        }
		
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
        background-color: #aaa;
        }
		table {
		  border-collapse: collapse;
		  border-spacing: 0;
		  width: 100%;
		  border: 1px solid #ddd;
		}
		
		th, td {
		  text-align: center;
		  padding: 16px;
		}
		th{
			background-color: #FFA533;
		}
		tr:nth-child(even) {
		  background-color: #f2f2f2;
		}
		img {
    		max-width: 100%;
    		max-height: 100%;
		}
</style>
</head>
<body>

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
<br />
<img src="img/chips.jpg" >
<br />
<h1 style="text-align: center">產品規格表 Specification</h1>
<hr/>
<table>
<tr>
	<th>物性<br/>Properties</th>
	<th>含水量<br/>Moisture content<br/>(ppm)</th>
	<th>胺基<br/>Amino end group<br/>(meq/kg)</th>
	<th>可萃取物<br/>Extractable<br/>(ppm)</th>
	<th>二氧化鈦<br/>TiO2<br/>(%)</th>
	<th>熔點<br/>Melting point<br/>(°C)</th>
</tr>


<c:forEach items="${result.rows }" var="row">
	<tr>
		<td>${row.item }</td>
		<td>${row.water }</td>
		<td>${row.amino }</td>
		<td>${row.extract }</td>
		<td>${row.tio2 }</td>
		<td>${row.melt }</td>
	</tr>
</c:forEach>
</table>
<br/>
<ul style="padding-left: 30px">
	<h3>Packaging:</h3>
	<li> 800kgs/bag ; 25kgs/bag</li>
	<li>Shipping: 16mt/20'Container ; 23mt/40'Container</li>
</ul>
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
</body>
</html>