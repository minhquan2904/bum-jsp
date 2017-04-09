<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp"></jsp:include>

<div class="main-page col-xs-8 col-sm-8 container-fluid">

	<!-- NEWS-->
	<div class="b-news container-fluid wow fadeInLeft"
		data-wow-duration="2s">
		<div class="b-news-img" style="position: relative; padding-top: 10px;">
			<svg xmlns="http://www.w3.org/2000/svg"
				xmlns:xlink="http://www.w3.org/1999/xlink"
				preserveAspectRatio="xMidYMid" width="300" height="43"
				viewBox="0 0 300 43">
                            <image
					xlink:href="data:img/png;base64,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"
					width="300" height="43" />
                        </svg>
		</div>
		<!-- //NEws-IMG-->
		<div class="row">
			<div class="col-sm-6 wow fadeInLeft" data-wow-duration="2s">
				<div class="b-link-new wow fadeInLeft" data-wow-duration="2s">
					<a href="#"><img class="img-responsive" src="img/news-demo.jpg"
						alt="intro">
						<p class="b-para-news">
							<span class="intro">Title của tin tức</span>
						</p> </a>
					<!-- Date post -->
					<span class="card-view" style="padding-left: 10px;">29/3/2017</span>
					<!-- /Date post -->
					<!-- View -->
					• <span class="glyphicon glyphicon-eye-open">1069</span>
					<!-- /View -->
				</div>
			</div>
			<div class="col-sm-6 wow fadeInLeft" data-wow-duration="2s">
				<div class="b-link-new wow fadeInLeft" data-wow-duration="2s">
					<a href="#"><img class="img-responsive" src="img/news-demo.jpg"
						alt="intro">
						<p class="b-para-news">
							<span class="intro">Title của tin tức</span>
						</p> </a>
					<!-- Date post -->
					<span class="card-view" style="padding-left: 10px;">29/3/2017</span>
					<!-- /Date post -->
					<!-- View -->
					• <span class="glyphicon glyphicon-eye-open">1069</span>
					<!-- /View -->
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 wow fadeInLeft" data-wow-duration="2s">
				<div class="b-link-new wow fadeInLeft" data-wow-duration="2s">
					<a href="#"><img class="img-responsive" src="img/news-demo.jpg"
						alt="intro">
						<p class="b-para-news">
							<span class="intro">Title của tin tức</span>
						</p> </a>
					<!-- Date post -->
					<span class="card-view" style="padding-left: 10px;">29/3/2017</span>
					<!-- /Date post -->
					<!-- View -->
					• <span class="glyphicon glyphicon-eye-open">1069</span>
					<!-- /View -->
				</div>
			</div>
			<div class="col-sm-6 wow fadeInLeft" data-wow-duration="2s">
				<div class="b-link-new wow fadeInLeft" data-wow-duration="2s">
					<a href="#"><img class="img-responsive" src="img/news-demo.jpg"
						alt="intro">
						<p class="b-para-news">
							<span class="intro">Title của tin tức</span>
						</p> </a>
					<!-- Date post -->
					<span class="card-view" style="padding-left: 10px;">29/3/2017</span>
					<!-- /Date post -->
					<!-- View -->
					• <span class="glyphicon glyphicon-eye-open">1069</span>
					<!-- /View -->
				</div>
			</div>
		</div>
	</div>
	<!--/NEWS -->
	<!--FOOTER -->
</div>


<jsp:include page="layout/_footer.jsp"></jsp:include>