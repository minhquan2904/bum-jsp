<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="../admin_layout/_header.jsp"></jsp:include>
  <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
  		<div class="row">
  			<ol class="breadcrumb">
  				<li><a href="admin-iterface.html"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
  				<li class="active">Bài dự thi</li>
  			</ol>
  		</div><!--/.row-->
      <div class="row" style="padding:10px">
        <a href="add-news.html" class="btn btn-primary">Thêm Tin tức</a>
      </div><!--/.row-->

      <div class="row">
  			<div class="col-lg-12">
  				<div class="panel panel-default">
  					<div class="panel-heading">Danh sách tin tức</div>
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
<jsp:include page="../admin_layout/_footer.jsp"></jsp:include>