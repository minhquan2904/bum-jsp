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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/froala_editor.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/froala_style.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/code_view.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/colors.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/emoticons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/image.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/line_breaker.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/table.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/char_counter.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/video.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/fullscreen.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/quick_insert.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/css/datepicker3.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/lumino.glyphs.js"></script>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>

<jsp:include page="../admin_layout/_header-nav.jsp"></jsp:include>
<div class="container-fluid">
	<jsp:include page="../admin_layout/_header-slidebar.jsp"></jsp:include>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/froala_editor.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/align.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/char_counter.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/code_beautifier.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/code_view.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/colors.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/emoticons.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/entities.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/font_size.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/font_family.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/fullscreen.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/image.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/line_breaker.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/inline_style.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/link.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/lists.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/paragraph_format.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/paragraph_style.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/quick_insert.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/quote.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/save.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/url.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/video.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/languages/vi.js"></script>
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
<script src="${pageContext.request.contextPath}/js/admin.js"></script>
</body>

</html>
