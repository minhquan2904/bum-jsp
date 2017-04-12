<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ADMIN INTERFACE</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="css/datepicker3.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <script src="js/lumino.glyphs.js"></script>
    <link href="css/bootstrap-table.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <jsp:include page="../admin_layout/_navbar.jsp"></jsp:include>


   <jsp:include page="../admin_layout/_header-slidebar.jsp"></jsp:include>

    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
  		<div class="row">
  			<ol class="breadcrumb">
  				<li><a href="admin-iterface.html"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
  				<li class="active">Bài dự thi</li>
  			</ol>
  		</div><!--/.row-->
      <div class="row" style="padding:10px">
        <a href="#" class="btn btn-primary">Thêm bài dự thi</a>
      </div><!--/.row-->

      <div class="row">
  			<div class="col-lg-12">
  				<div class="panel panel-default">
  					<div class="panel-heading">Danh sách bài dự thi</div>
  					<div class="panel-body">
  						<table data-toggle="table" data-url="tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
  						    <thead>
  						    <tr>
  						        <th data-field="state" data-checkbox="true" >Item ID</th>
  						        <th data-field="id" data-sortable="true">Item ID</th>
  						        <th data-field="name"  data-sortable="true">Item Name</th>
  						        <th data-field="price" data-sortable="true">Item Price</th>
  						    </tr>
  						    </thead>
  						</table>
  					</div>
  				</div>
  			</div>
  		</div><!--/.row-->


    </div><!-- /.main -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="js/chart.min.js"></script>
  	<script src="js/chart-data.js"></script>
  	<script src="js/easypiechart.js"></script>
  	<script src="js/easypiechart-data.js"></script>
  	<script src="js/bootstrap-datepicker.js"></script>
    <script src="js/bootstrap-table.js"></script>
  </body>
</html>
