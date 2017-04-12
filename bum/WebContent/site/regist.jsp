<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp"></jsp:include>
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<style media="screen">
.b-regist label {
	font-family: 'Roboto', sans-serif;
}

.b-regist h3 {
	font-family: 'Roboto', sans-serif;
}

input.form-control.input-lg {
	font-size: medium;
}
</style>
<div class="main-page col-xs-8 col-sm-8 container-fluid">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			$('#formRegist').validate({
				rules : {
					group_name : "required",
					email : {
						required : true,
						email : true
					},
					password : {
						required : true,
						minlength : 6
					}
				},
				messages : {
					group_name : "Điền ít nhất 2 kí tự",
					password : {
						required : "Không để trống !",
						minlength : "Ít nhất 6 ký tự!"
					},
					email : {
						required : "Không để trống !"
					}
				}
			});
		});
	</script>
	<div class="b-regist">
		<form role="form" action="regist.html" method="post" id="formRegist">
			<h2>
				ĐĂNG KÝ DỰ THI <small style="font-size: 0.5em">Cuộc thi sáng
					tác phim ngắn dành cho sinh viên không chuyên điện ảnh lần 1 - 2017</small>
			</h2>
			<hr class="colorgraph">
			<!-- Gr-NAME -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="group_name">Tên nhóm</label> <input type="text" name="group_name" id="group_name"
                            class="form-control input-lg" minlength=2 placeholder="Tên nhóm" tabindex="1">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="group_foundation">Ngày thành lập nhóm |<small><i>
									Định dạng tháng/ngày/năm</i></small></label> <input type="date" name="foundation"
							id="foundation" class="form-control input-lg"
							placeholder="Ngày thành lập" tabindex="2">
					</div>
				</div>
			</div>
			<!-- /GR-NAME -->
			<!-- Leader info -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_name">Họ tên người đại diện</label> <input
							type="text" name="leader-name" id="leader-name"
							class="form-control input-lg" placeholder="Họ tên người đại diện"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_birthday">Ngày sinh</label> <input type="date"
							name="leader-birthday" id="birthday"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
			</div>
			<!-- /Leader info -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_phone">Số điện thoại người đại diện</label> <input
							type="tel" name="leader-phone" " id="leader-phone"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_name">Số CMND người đại diện</label> <input
							type="number" name="leader-indentity" id="leader-identity"
							class="form-control input-lg" placeholder="Số CMND" tabindex="4">
					</div>
				</div>
			</div>
			<!-- /Leader info -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_name">Email</label> <input type="text"
							name="leader-email" id="leader-email"
							class="form-control input-lg" placeholder="Email" tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_name">Mã số sinh viên</label> <input
							type="text" name="leader-idStudent" id="leader-idstudent"
							class="form-control input-lg" placeholder="Mã số sinh viên"
							tabindex="4">
					</div>
				</div>
			</div>
			<!-- /Leader info -->
			<!-- SCHOOL NAME -->
			<div class="form-group">
				<label for="leader_name">Tên trường bạn đang học</label> <input
					type="text" name="school-name" id="school-name"
					class="form-control input-lg" placeholder="Tên trường bạn đang học"
					tabindex="4">
			</div>
			<!-- /SCHOOL NAME -->
			<div class="form-group">
				<label for="rts-dish">Thành tích đạt được</label>
				<textarea name="achivement" id="achivement"
					style="height: auto; width: 100%;" class="form-control"
					placeholder="Thành tích đạt được khi tham gia các cuộc thi làm phim"></textarea>
				<p class="help-block">
					<i>Không bắt buộc</i>
				</p>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="form-group">
						<h3>Danh sách thành viên trong nhóm</h3>
						<p class="help-block">
							<i>Điền đầy đủ các thông tin thành viên của nhóm bạn, tối đa
								8 thành viên/nhóm(bao gồm nhóm trưởng). Để trống các input dư
								nếu nhóm bạn có số lượng thành viên nhỏ hơn 8.</i>
						</p>
					</div>
				</div>
			</div>
			<!-- MEMBER - 1 -->
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">
						<label for="leader_name">Họ và tên thành viên</label> <input
							type="text" name="member-name-1" class="form-control input-lg"
							placeholder="Họ tên thành viên" tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">
						<label for="leader_name">Ngày sinh</label> <input type="date"
							name="member-birthday-1" class="form-control input-lg"
							placeholder="Ngày sinh" tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">
						<label for="leader_name">Số điện thoại</label> <input type="tel"
							name="member-phone-1" class="form-control input-lg"
							placeholder="Số điện thoại" tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">
						<label for="leader_name">Email</label> <input type="text"
							name="member-email-1" class="form-control input-lg"
							placeholder="Email" tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->


			<!-- MEMBER - 2 -->
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-name-2"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="date" name="member-birthday-2"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="tel" name="member-phone-2"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-email-2"
							class="form-control input-lg" placeholder="Email" tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 3 -->
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-name-3"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="date" name="member-birthday-3"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="number" name="member-phone-3"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-email-3"
							class="form-control input-lg" placeholder="Email" tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 4 -->
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-name-4"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="date" name="member-birthday-4"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="number" name="member-phone-4"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-email-4"
							class="form-control input-lg" placeholder="Email" tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 5 -->
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-name-5"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="date" name="member-birthday-5"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="number" name="member-phone-5"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-email-5"
							class="form-control input-lg" placeholder="Email" tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 6 -->
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-name-6"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="date" name="member-birthday-6"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="number" name="member-phone-6"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-email-6"
							class="form-control input-lg" placeholder="Email" tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- MEMBER - 7 -->
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-name-7"
							class="form-control input-lg" placeholder="Họ tên thành viên"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="date" name="member-birthday-7"
							class="form-control input-lg" placeholder="Ngày sinh"
							tabindex="4">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="number" name="member-phone-7"
							class="form-control input-lg" placeholder="Số điện thoại"
							tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">

						<input type="text" name="member-email-7"
							class="form-control input-lg" placeholder="Email" tabindex="3">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<!-- Desciption -->

			<div class="form-group">
				<label for="rts-dish">Mô tả về nhóm của bạn</label>
				<textarea name="description" id="rtsessay"
					style="height: auto; width: 100%;" class="form-control"
					placeholder="Mô tả về nhóm của bạn"></textarea>
				<p class="help-block">
					<i>Bắt buộc</i>
				</p>
			</div>


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