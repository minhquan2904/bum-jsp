<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="../admin_layout/_header.jsp"></jsp:include>
<style>
.row img {
	margin-bottom: 5px;
	max-width: 90%;
}

.form-control {
	min-width: 300px;
}
</style>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="wrapper" style="margin: 0">
		<h1>
			<center>Tùy chỉnh</center>
		</h1>
		<br>
		<h3><center style="color:red"><c:if test="${not empty mess}">${mess}</c:if></center></h3>
		<form action="change-password.html" method="post" accept-charset="utf-8">
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Mật khẩu
					hiện tại: </label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="email"
						name="curpwd" placeholder="Enter curent password">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Mật khẩu mới</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pwd" name="newpwd"
						placeholder="Enter new password">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Rewrite
					Password:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="rewpwd"
						placeholder="Confirm new password">
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
<jsp:include page="../admin_layout/_footer.jsp"></jsp:include>