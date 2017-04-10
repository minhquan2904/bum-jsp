<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp"></jsp:include>
<div class="main-page col-xs-8 col-sm-8 container-fluid">

	<div class="role">
		<div style="text-align: center" class="role-title">
			<h1 class="pagehe">Thông tin cuộc thi</h1>
			<c:if test="${not empty doc.title }">
				<p>${doc.title }</p>
			</c:if>
			<hr class="colorgraph">
		</div>
		<div class="role-info">
			<i>Tải thể lệ đầy đủ<a href=""> tại đây</a></i>
			<c:if test="${not empty doc.content }">
				<p>${doc.content}</p>
			</c:if>

		</div>

	</div>

</div>


<jsp:include page="layout/_footer.jsp"></jsp:include>