<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ADMIN INTERFACE</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
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
				<li><a href="admin-iterface.html"><svg
							class="glyph stroked home">
							<use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Danh sách đăng kí</li>
			</ol>
		</div>
		<!--/.row-->


		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Danh sách thành viên đội</div>
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json"
							data-show-refresh="true" data-show-toggle="true"
							data-show-columns="true" data-search="true"
							data-select-item-name="toolbar1" data-pagination="true"
							data-sort-name="name" data-sort-order="desc">
							<thead>
								<tr>
									<th data-field="state" data-checkbox="true">Item ID</th>
									<th data-field="id" data-visible="false">Group ID</th>
									<th data-field="name" data-sortable="true">Tên nhóm</th>
									<th data-field="foundation">Ngày thành lập</th>
									<th data-field="leader_name">Họ&tên nhóm trưởng</th>
									<th data-field="ld_birthday" data-visible="false">Ngày sinh</th>
									<th data-field="ld_phone" data-visible="false">Số điện thoại</th>
									<th data-field="ld_identity" data-visible="false">Số CMND</th>
									<th data-field="ld_idStudent" data-visible="false">MSSV</th>
									<th data-field="email">Email</th>
									<th data-fiel="school">Tên trường</th>
									<th data-field="achivement">Thành tích</th>
									<th data-field="description">Mô tả nhóm</th>
									<th data-align="center">Xem thành viên</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="l" items="${list}" varStatus="loop">
									<tr class="clk">
										<td>${l.id}</td>
										<td>${l.id }</td>
										<td>${fn:escapeXml(l.name)}</td>
										<td>${fn:escapeXml(l.foundation)}</td>
										<td>${fn:escapeXml(l.leader_name)}</td>
										<td>${fn:escapeXml(l.ld_birthday)}</td>										
										<td>${fn:escapeXml(l.ld_phone)}</td>
										<td>${fn:escapeXml(l.ld_identity)}</td>
										<td>${fn:escapeXml(l.ld_idStudent)}</td>
										<td>${fn:escapeXml(l.email)}</td>
										<td>${fn:escapeXml(l.school)}</td>
										<td>${fn:escapeXml(l.achivement)}</td>
										<td>${fn:escapeXml(l.description)}</td>
										<td><a class="btn btn-primary" href="#"><span class="glyphicon glyphicon-pencil"></span></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->


	</div>
	<!-- /.main -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-table.js"></script>
</body>
</html>
