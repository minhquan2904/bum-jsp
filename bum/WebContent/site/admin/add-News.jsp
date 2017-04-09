<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/froala_editor.min.css">
<link rel="stylesheet" href="css/froala_style.min.css">
<link rel="stylesheet" href="css/plugins/code_view.min.css">
<link rel="stylesheet" href="css/plugins/colors.min.css">
<link rel="stylesheet" href="css/plugins/emoticons.min.css">
<link rel="stylesheet" href="css/plugins/image.min.css">
<link rel="stylesheet" href="css/plugins/line_breaker.min.css">
<link rel="stylesheet" href="css/plugins/table.min.css">
<link rel="stylesheet" href="css/plugins/char_counter.min.css">
<link rel="stylesheet" href="css/plugins/video.min.css">
<link rel="stylesheet" href="css/plugins/fullscreen.min.css">
<link rel="stylesheet" href="css/plugins/quick_insert.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<script src="js/lumino.glyphs.js"></script>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>

<jsp:include page="../admin_layout/_header-nav.jsp"></jsp:include>
<div class="container-fluid">
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="index.html"><svg
						class="glyph stroked dashboard-dial">
					<use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>

			<li><a href="#"><svg class="glyph stroked line-graph">
					<use xlink:href="#stroked-line-graph"></use></svg> Biểu đồ</a></li>
			<li><a href="#"><svg class="glyph stroked pencil">
					<use xlink:href="#stroked-pencil"></use></svg> Bài dự thi</a></li>
			<li><a href="#"><svg class="glyph stroked sound on">
					<use xlink:href="#stroked-sound-on" /></svg> Tin tức</a></li>
			<li><a href="#"><svg class="glyph stroked male user ">
					<use xlink:href="#stroked-male-user" /></svg> Editor</a></li>
			<li><a href="#"><svg class="glyph stroked camera ">
					<use xlink:href="#stroked-camera" /></svg> Quảng cáo</a></li>
			<li><a href="#"><svg class="glyph stroked notepad ">
					<use xlink:href="#stroked-notepad" /></svg> Thể lệ &amp; Giới thiệu</a></li>
			<li><a href="#"><svg class="glyph stroked mobile device">
					<use xlink:href="#stroked-mobile-device" /></svg> Thay đổi background</a></li>
			<li role="presentation" class="divider"></li>
			<li><a href="login.html"><svg
						class="glyph stroked male-user">
					<use xlink:href="#stroked-male-user"></use></svg> ...</a></li>
		</ul>

	</div>
	<!--/.sidebar-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main"
		style="margin-left: 0px;">
		<div id="wrapper" style="padding: 10px">
			<h1>
				<center>Đăng bài viết</center>
			</h1>
			<form action="admin-option_submit" method="get"
				accept-charset="utf-8">
				<div class="form-group">
					<label class="col-md-2">Tiêu đề</label> <input type="text"
						class="form-control" id="email">
				</div>
				<div id="editor">
					<div id='edit' style="margin-top: 30px;">
						<h1>Viết bài ở đây + HTML</h1>
						<p>You can use at any time in your code the following snippet
							to get the content inside the Froala WYSIWYG HTML Editor</p>
					</div>
				</div>
				<button style="margin: 10px" type="submit" class="btn btn-success">Lưu
					thay đổi</button>
			</form>
		</div>

	</div>
</div>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>
<script type="text/javascript" src="js/froala_editor.min.js"></script>
<script type="text/javascript" src="js/plugins/align.min.js"></script>
<script type="text/javascript" src="js/plugins/char_counter.min.js"></script>
<script type="text/javascript" src="js/plugins/code_beautifier.min.js"></script>
<script type="text/javascript" src="js/plugins/code_view.min.js"></script>
<script type="text/javascript" src="js/plugins/colors.min.js"></script>
<script type="text/javascript" src="js/plugins/emoticons.min.js"></script>
<script type="text/javascript" src="js/plugins/entities.min.js"></script>
<script type="text/javascript" src="js/plugins/font_size.min.js"></script>
<script type="text/javascript" src="js/plugins/font_family.min.js"></script>
<script type="text/javascript" src="js/plugins/fullscreen.min.js"></script>
<script type="text/javascript" src="js/plugins/image.min.js"></script>
<script type="text/javascript" src="js/plugins/line_breaker.min.js"></script>
<script type="text/javascript" src="js/plugins/inline_style.min.js"></script>
<script type="text/javascript" src="js/plugins/link.min.js"></script>
<script type="text/javascript" src="js/plugins/lists.min.js"></script>
<script type="text/javascript" src="js/plugins/paragraph_format.min.js"></script>
<script type="text/javascript" src="js/plugins/paragraph_style.min.js"></script>
<script type="text/javascript" src="js/plugins/quick_insert.min.js"></script>
<script type="text/javascript" src="js/plugins/quote.min.js"></script>
<script type="text/javascript" src="js/plugins/table.min.js"></script>
<script type="text/javascript" src="js/plugins/save.min.js"></script>
<script type="text/javascript" src="js/plugins/url.min.js"></script>
<script type="text/javascript" src="js/plugins/video.min.js"></script>
<script type="text/javascript" src="js/languages/vi.js"></script>
<script>
	$(function() {
		$('#edit').froalaEditor({
			language : 'vi',
			imageInsertButtons : [ 'imageByURL' ],
			videoInsertButtons : [ 'videoByURL', 'videoEmbed' ],
			imageUpload : false,
			pasteImage : false

		});

	});
</script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="js/admin.js"></script>
</body>

</html>
