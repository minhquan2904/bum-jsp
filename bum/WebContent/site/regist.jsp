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

	<div class="b-regist">
		<form role="form" action="dangki" method="post" id="formRegist">
			<h2>
				ĐĂNG KÝ DỰ THI <small style="font-size: 0.5em">Cuộc thi sáng
					tác phim ngắn dành cho sinh viên không chuyên điện ảnh lần 1 - 2017</small>
			</h2>
			<hr class="colorgraph">
			<!-- Gr-NAME -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="group_name">Tên nhóm</label> <input type="text"
							name="group_name" id="group_name"
							class="form-control input-lg name required"
							placeholder="Tên nhóm" tabindex="1" data-placement="top"
							data-trigger="manual"
							data-content="Tên nhóm không hợp lệ! Tên phải ít nhất 2 kí tự!">
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
							class="form-control input-lg name required"
							placeholder="Họ tên người đại diện" tabindex="3"
							data-placement="top" data-trigger="manual"
							data-content="Họ tên người đại diện không hợp lệ! Tên phải ít nhất 2 kí tự!">
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
							type="text" name="leader-phone" id="leader-phone"
							class="form-control input-lg phone required"
							placeholder="Số điện thoại" tabindex="5" data-placement="top"
							data-trigger="manual"
							data-content="Phải nhập đúng số điện thoại!">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_name">Số CMND người đại diện</label> <input
							type="text" name="leader-indentity" id="leader-identity"
							class="form-control input-lg cmnd required" placeholder="Số CMND"
							tabindex="6" data-placement="top" data-trigger="manual"
							data-content="Phải nhập đúng số CMND!">
					</div>
				</div>
			</div>
			<!-- /Leader info -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_name">Email</label> <input type="text"
							name="leader-email" id="leader-email"
							class="form-control input-lg email required" placeholder="Email"
							tabindex="7" data-placement="top" data-trigger="manual"
							data-content="Phải nhập đúng dạng email!">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<label for="leader_name">Mã số sinh viên</label> <input
							type="text" name="leader-idStudent" id="leader-idstudent"
							class="form-control input-lg masv required"
							placeholder="Mã số sinh viên" tabindex="8" data-placement="top"
							data-trigger="manual" data-content="Phải nhập đúng mã sinh viên!">
					</div>
				</div>
			</div>
			<!-- /Leader info -->
			<!-- SCHOOL NAME -->
			<div class="form-group">
				<label for="leader_name">Tên trường bạn đang học</label> <input
					type="text" name="school-name" id="school-name"
					class="form-control input-lg name required"
					placeholder="Tên trường bạn đang học" tabindex="9"
					data-placement="top" data-trigger="manual"
					data-content="Tên trường không hợp lệ! Tên phải ít nhất 2 kí tự!">
			</div>
			<!-- /SCHOOL NAME -->
			<div class="form-group">
				<label for="rts-dish">Thành tích đạt được</label>
				<textarea name="achivement" id="achivement" tabindex="10"
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
			<%!int i;%>
			<%
				for (i = 1; i <= 8; i++) {
			%>
			<!-- MEMBER -  -->
			<div class="row">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">
						<label for="leader_name">Họ và tên thành viên</label> <input
							type="text" name="member-name-<%=i%>"
							class="form-control input-lg name "
							placeholder="Họ tên thành viên" tabindex="11"
							data-placement="top" data-trigger="manual"
							data-content="Họ và tên không hợp lệ! Tên phải ít nhất 2 kí tự!">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">
						<label for="leader_name">Ngày sinh</label> <input type="date"
							name="member-birthday-<%=i%>" class="form-control input-lg"
							placeholder="Ngày sinh" tabindex="12">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">
						<label for="leader_name">Số điện thoại</label> <input type="text"
							name="member-phone-<%=i%>" class="form-control input-lg phone "
							placeholder="Số điện thoại" tabindex="14" data-placement="top"
							data-trigger="manual"
							data-content="Phải nhập đúng số điện thoại!">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<div class="form-group">
						<label for="leader_name">Email</label> <input type="text"
							name="member-email-<%=i%>" class="form-control input-lg email "
							placeholder="Email" tabindex="15" data-placement="top"
							data-trigger="manual" data-content="Phải nhập đúng dạng email!">
					</div>
				</div>
			</div>
			<!-- /MEMBER -->
			<%
				}
			%>



			<!-- Desciption -->

			<div class="form-group">
				<label for="rts-dish">Mô tả về nhóm của bạn</label>
				<textarea name="description" id="rtsessay"
					style="height: auto; width: 100%;"
					class="form-control name required"
					placeholder="Mô tả về nhóm của bạn" data-placement="top"
					data-trigger="manual" data-content="Nhập mô tả về nhóm của bạn"></textarea>
				<p class="help-block">
					<i>Bắt buộc</i>
				</p>
			</div>


			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="17">Tôi
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
					id="submit" class="btn btn-primary btn-block btn-lg regist"
					tabindex="7" align="middle">
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
						<h4 class="modal-title" id="myModalLabel">
							<b>Điều khoản thỏa thuận khi đăng ký tham gia cuộc thi</b>
						</h4>
					</div>
					<div class="modal-body" style="font-size: 13px;">
						<p>
							1) Các thí sinh đăng ký dự thi trên nguyên tắc tự nguyện và tự
							giác chấp hành mọi quy định của Ban tổ chức. <br>
						</p>
						<p>
							2) Thí sinh hiểu rõ về thể lệ của cuộc thi như: Đối tượng; Chủ
							đề; Yêu cầu bài dự thi và những quy định chung của BTC. <br>
						</p>
						<p>
							3) Tác phẩm dự thi phải là tác phẩm chưa được phát hành dưới bất
							kỳ hình thức nào. Thí sinh phải chứng minh quyền tác giả của mình
							với tác phẩm dự thi. Tác phẩm không thuộc quyền sở hữu của bất kỳ
							cơ quan, tổ chức nào khác ngoài thí sinh/nhóm tham gia dự thi. <br>
						</p>
						<p>
							4) Tránh mọi hành vi vi phạm bản quyền, đặc biệt về âm nhạc và
							hình ảnh trong phim (không lấy hình ảnh của các phim khác khi
							chưa được phép). Ngoài ra, Ban tổ chức không chấp nhận bài dự thi
							sử dụng những bản nhạc chưa có tác quyền hoặc những bản nhạc mang
							tính chất thương mại trong Video, trong mọi trường hợp bất kỳ ca
							khúc hoặc giai điệu nào đều phải có bản Cam kết sử dụng Âm nhạc.
							Khi BTC Upload sản phẩm dự thi lên các kênh truyền thông nếu có
							bất kì sự kiểm duyệt bản quyền nào BTC sẽ liên lạc với các thí
							sinh để xử lý trước khi Upload bài dự thi lên Youtube – Nếu nhóm
							không gửi lại bài dự thi trước thời hạn sẽ BTC sẽ không cho đăng
							tải dự thi. <br>
						</p>
						<p>
							5) Bài dự thi gửi không được gây ảnh hưởng xấu đến thương hiệu,
							hình ảnh sản phẩm của nhà tài trợ chiến lược. <br>
						</p>
						<p>
							6) Ban tổ chức không chịu trách nhiệm và không có nghĩa vụ giải
							quyết bất kỳ khiếu nại hay tranh chấp nào liên quan đến quyền tác
							giả của tác phẩm dự thi do người tham gia gửi. <br>
						</p>
						<p>
							7) Thí sinh phải chịu mọi trách nhiệm pháp lý nếu xảy ra các vấn
							đề liên quan đến bản quyền của các yếu tố được sử dụng trong tác
							phẩm dự thi. <br>
						</p>
						<p>
							8) Trong quá trình dự thi, các đội không được quyền đăng tải trực
							tiếp sản phẩm lên các kênh truyền thông khác mà phải thông qua
							link phim do Ban Tổ chức cung cấp. <br>
						</p>
						<p>
							9) Nội dung và hình thức dự thi phù hợp với thuần phong mỹ tục
							người Việt Nam. Ban tổ chức không chấp nhận những cảnh lạm dụng,
							bạo lực, lăng mạ quá mức hay những nội dung không phù hợp và
							không được chứa lời lẽ thô tục. <br>
						</p>
						<p>
							10) Các tác phẩm dự thi không liên quan đến các vấn đề về tôn
							giáo, chính trị. <br>
						</p>
						<p>
							11) Thí sinh đồng ý với việc tác phẩm của mình sẽ được công khai
							trên trang mạng xã hội và nhận lời bình luận từ những người dùng
							khác. <br>
						</p>
						<p>
							12) Trung tâm BTC - Truyền thông & sự kiện có quyền sử dụng các
							tác phẩm dự thi để phục vụ cho các hoạt động truyền thông của
							Trung tâm. <br>
						</p>
						<p>
							13) Ban tổ chức không chịu trách nhiệm nếu sản phẩm dự thi bị
							thất lạc, chậm trễ, gửi sai hoặc chưa hoàn thành hoặc không thể
							gửi đi hoặc không thể tham gia vì bất cứ lý do gì. <br>
						</p>
						<p>
							14) Ban tổ chức có toàn quyền gỡ bỏ những bài dự thi vi phạm
							những điều trên đây. Ngoài ra, nếu người tham gia gửi bài tham dự
							có nội dung không hợp lệ thì bài tham dự sẽ không được duyệt để
							đăng tải. <br>
						</p>
						<p>
							15) Khi tham gia cuộc thi, các thí sinh hiển nhiên đồng ý và phải
							tuân thủ tất cả các điều khoản mà chương trình đưa ra. Trong bất
							cứ giai đoạn nào của cuộc thi, nếu thí sinh không chấp hành điều
							khoản của chương trình đưa ra sẽ bị tước quyền tham gia ngay tức
							thời. Trong trường hợp thí sinh thắng giải, nếu Ban tổ chức phát
							hiện có bất kỳ sự không tuân thủ điều khoản nào, thí sinh đó sẽ
							bị hủy bỏ tư cách thắng giải. <br>
						</p>
						<p>Tôi đồng ý với những điều khoản trên.</p>

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