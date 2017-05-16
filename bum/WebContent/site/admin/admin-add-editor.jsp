<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="../admin_layout/_header.jsp"></jsp:include>
<style>
.row img {
	margin-bottom: 5px;
	max-width: 90%;
}

.form-control {
	min-width: 300px;
}

.not-active {
	pointer-events: none;
	cursor: default;
}
</style>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="wrapper" style="margin: 0">
		<h1>
			<center>Tùy chỉnh</center>
		</h1>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<form class="form-horizontal" style="padding: 50px;" method="post" action="add-editor.html">
						<h3>
							<center>Thêm user</center>
							<br>
							<center style="color:red"><c:if test="${not empty mess}">${mess}</c:if></center>
						</h3>
						
						<div class="form-group">
							<label class="control-label col-sm-2" for="email">Username</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="email" name="usn"
									placeholder="Enter email">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">Password:</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="pwd" name="pwd"
									placeholder="Enter password">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">Rewrite Password:</label>
							<div class="col-sm-10">
								<input type="password" class="form-control"  name="rewpwd"
									placeholder="Enter password">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2"  for="sel1">Role:</label>
							<div class="col-sm-10"> <select
								class="form-control" id="sel1" name="role">
								<option value="1">Admin</option>
								<option value="2">Editor</option>								
							</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Submit</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Danh sách editor</div>
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json"
							data-show-refresh="true" data-show-toggle="true"
							data-show-columns="true" data-search="true"
							data-select-item-name="toolbar1" data-pagination="true"
							data-sort-name="name" data-sort-order="desc">
							<thead>
								<tr>
									<th data-field="state" data-checkbox="true">Item ID</th>
									<th data-field="usn">Username</th>
									<th data-field="role" data-sortable="true">Role</th>
									<th data-field="status">Status</th>
									<th data-field="block">Block</th>
									<th data-field="unblock">Unblock</th>


								</tr>
							</thead>
							<tbody>
								<c:forEach var="l" items="${list}" varStatus="loop">
									<tr class="clk">
										<td>${l.id}</td>
										<td>${fn:escapeXml(l.username)}</td>
										<td><c:if test="${l.role == 1 }">
												<c:out value="Admin"></c:out>
											</c:if> <c:if test="${l.role == 2 }">
												<c:out value="Editor"></c:out>
											</c:if></td>
										<c:if test="${l.status == 1 }">
											<td>Active</td>
											<td><a class="btn btn-danger" href="#"><span
													class="glyphicon glyphicon-thumbs-down"></span></a></td>
											<td><a class="btn btn-info not-active" href="#"><span
													class="glyphicon glyphicon-thumbs-up"></span></a></td>F

										</c:if>
										<c:if test="${l.status == 0 }">
											<td>Blocked</td>
											<td><a class="btn btn-danger not-active" href="#"><span
													class="glyphicon glyphicon-thumbs-down"></span></a></td>
											<td><a class="btn btn-info" href="#"><span
													class="glyphicon glyphicon-thumbs-up"></span></a></td>F

										</c:if>


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
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/chart.min.js"></script>
<script src="${pageContext.request.contextPath}/js/chart-data.js"></script>
<script src="${pageContext.request.contextPath}/js/easypiechart.js"></script>
<script src="${pageContext.request.contextPath}/js/easypiechart-data.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table.js"></script>
</body>
</html>
