<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="../admin_layout/_header.jsp"></jsp:include>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="wrapper" style="margin: 0">
		<h1>
			<center>Tùy chỉnh</center>
		</h1>
		<form action="admin-option_submit" method="get" accept-charset="utf-8">
			<div class="form-group row">
				<label class="col-md-2">Ảnh quảng cáo bên trái</label>
				<div class="input-group col-md-10">
					<label class="input-group-btn"> <span
						class="btn btn-primary"> Browse&hellip; <input type="file"
							style="display: none;" multiple>
					</span>
					</label> <input type="text" class="form-control" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-2">Ảnh quảng cáo bên phải</label>
				<div class="input-group col-md-10">
					<label class="input-group-btn"> <span
						class="btn btn-primary"> Browse&hellip; <input type="file"
							style="display: none;" multiple>
					</span>
					</label> <input type="text" class="form-control" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-2">Ảnh quảng cáo bên dưới footer</label>
				<div class="input-group col-md-10">
					<label class="input-group-btn"> <span
						class="btn btn-primary"> Browse&hellip; <input type="file"
							style="display: none;" multiple>
					</span>
					</label> <input type="text" class="form-control" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-2">Ảnh nền</label>
				<div class="input-group col-md-10">
					<label class="input-group-btn"> <span
						class="btn btn-primary"> Browse&hellip; <input type="file"
							style="display: none;" multiple>
					</span>
					</label> <input type="text" class="form-control" readonly>
				</div>
			</div>
			<button type="submit" class="btn btn-success">Lưu thay đổi</button>
		</form>
	</div>
</div>
<jsp:include page="../admin_layout/_footer.jsp"></jsp:include>