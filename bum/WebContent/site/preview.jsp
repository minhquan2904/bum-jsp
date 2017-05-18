<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp"></jsp:include>
<div class="main-page col-xs-8 col-sm-8 container-fluid">
	<div class="role">
		<div class="role-title">
			<h1 id="tieude"></h1>
			<span>Ngày đăng: <span id="date"></span> | </span><span>Thể loại: <span id="cate"></span> </span>
			<hr class="colorgraph">
		</div>
		<div id="noidung" class="role-info">		
		</div>

	</div>
</div>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
	$(function(){
		var content = localStorage.getItem("content"); 
		var title=localStorage.getItem("title");
		var cate=localStorage.getItem("cate");
		//current day
		var d = new Date();
		var month = d.getMonth()+1;
		var day = d.getDate();
		var date =  ((''+day).length<2 ? '0' : '') + day + '/' +
		    ((''+month).length<2 ? '0' : '') + month + '/' + d.getFullYear();
		$('#date').html(date);
		$('#tieude').html(title);
		$('#noidung').html(content);
		$('#cate').html(cate);
	});
</script>

<jsp:include page="layout/_footer.jsp"></jsp:include>