<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="../admin_layout/_header.jsp"></jsp:include>
<style>
.row img {
margin-bottom:5px;
	max-width: 90%;
}
.form-control{
	min-width:300px;
}
</style>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="wrapper" style="margin: 0">
		<h1>
			<center>Tùy chỉnh</center>
		</h1>
		<form action="adminOption.html" method="post"
			accept-charset="utf-8">
			<c:forEach var="row" items="${requestScope.dsanh}">
			<div style="margin-left:1%;"class="form-group row">
				<div class="row">
					<img src="${row.link}" id="${row.id}" class="img-responsive" />
				</div>
				<label style="margin-top:15px" class="col-md-3">${row.name}</label>
				<div  class="input-group col-md-9">
				 <input type="text" class="form-control" value="${row.link}" name="${row.id}"
				  onchange="$('#${row.id}').attr('src', $(this).val() )">
				</div>
			</div>
			<hr>
			</c:forEach>
			
			<!-- <div class="form-group row">
				<div class="row">
					<img src="" id="afooter" class="img-responsive" />
				</div>
				<label class="col-md-4">Ảnh nền footer</label>
				<div class="input-group col-md-8">
				<input type="text" class="form-control" name="5" onchange="$('#afooter').attr('src', $(this).val() )">
					<label class="input-group-btn"> <span
						class="btn btn-primary"> Duyệt... <input type="file"
							id="file" name="file1" style="display: none;"
							onchange="$('#afooter').attr('src', window.URL.createObjectURL(this.files[0]))"
							accept="image/*">
					</span>
					</label> <input type="text" class="form-control" name="5" readonly>
				</div>
			</div> -->
			

			<button type="submit" class="btn btn-success">Lưu thay đổi</button>
		</form>
	</div>
</div>
<jsp:include page="../admin_layout/_footer.jsp"></jsp:include>