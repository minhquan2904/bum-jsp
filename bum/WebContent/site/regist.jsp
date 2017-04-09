<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp"></jsp:include>
<div class="main-page col-xs-8 col-sm-8 container-fluid">

	<div class="b-regist">
		<form role="form">
			<h2>
				ĐĂNG KÝ DỰ THI <small style="font-size: 0.5em">Cuộc thi sáng
					tác phim ngắn dành cho sinh viên không chuyên điện ảnh lần 1 - 2017</small>
			</h2>
			<hr class="colorgraph">
			<!-- Gr-NAME -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="group_name" id="group_name"
							class="form-control input-lg" placeholder="Tên nhóm" tabindex="1">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="date" id="date"
							class="form-control input-lg" placeholder="Ngày thành lập"
							tabindex="2">
					</div>
				</div>
			</div>
			<!-- /GR-NAME -->
			<!-- Leader info -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="leader-name" id="leader-name"
							class="form-control input-lg" placeholder="Họ tên người đại diện"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="birthday" id="birthday"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
			</div>
			<!-- /Leader info -->
			<!-- PHONE -->
			<div class="form-group">
				<input type="number" name="phone-number" id="phone-number"
					class="form-control input-lg" placeholder="Số điện thoại"
					tabindex="4">
			</div>
			<!-- /PHONE -->
			<!-- EMAIL -->
			<div class="form-group">
				<input type="email" name="email" id="email"
					class="form-control input-lg" placeholder="Email Address"
					tabindex="4">
			</div>
			<!-- /EMAIL -->
			<!-- SCHOOL NAME -->
			<div class="form-group">
				<input type="text" name="school-name" id="school-name"
					class="form-control input-lg" placeholder="Tên trường bạn đang học"
					tabindex="4">
			</div>
			<!-- /SCHOOL NAME -->
			<!-- MEMBER - 1 -->
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-name-1"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-birthday-1"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="number" name="meber-phone-1"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 2 -->
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-name-2"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-birthday-2"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="number" name="meber-phone-2"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 3 -->
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-name-3"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-birthday-3"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="number" name="meber-phone-3"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 4 -->
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-name-4"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-birthday-4"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="number" name="meber-phone-4"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 5 -->
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-name-5"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="member-birthday-5"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="number" name="meber-phone-5"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="7">Tôi
							đồng ý</button> <input type="checkbox" name="t_and_c" id="t_and_c"
						class="hidden" value="1">
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					Bắng cách nhấp vào <strong class="label label-primary">Đăng
						ký</strong>, bạn đồng ý với <a href="#" data-toggle="modal"
						data-target="#t_and_c_m">Các điều khoản và điều kiện</a> của chúng
					tôi, bao gồm sử dụng cookie.
				</div>
			</div>

			<hr class="colorgraph">

			<div class="flex-box-center full-width">
				<input type="submit" value="Đăng ký" style="width: 200px;"
					class="btn btn-primary btn-block btn-lg regist" tabindex="7"
					align="middle">
			</div>


		</form>

		<!-- Modal -->
		<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
					</div>
					<div class="modal-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">I
							Agree</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>

</div>


<jsp:include page="layout/_footer.jsp"></jsp:include>