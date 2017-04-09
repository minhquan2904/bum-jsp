<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp"></jsp:include>
    <div class="main-page col-xs-8 col-sm-8 container-fluid">

                <!-- NEWS-->
                <div class="b-news container-fluid wow fadeInLeft" data-wow-duration="2s">
                <div class="b-news container-fluid wow fadeInLeft" data-wow-duration="2s">
                    <div class="b-news-img" style="position:relative;padding-top:10px;">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="300" height="43" viewBox="0 0 300 43">
                           <image xlink:href="data:img/png;base64,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" width="303" height="43"/>
                        </svg>
                    </div>
                    <!-- //NEws-IMG-->

                        <div class="row">
                            <div class="col-sm-6 wow fadeInLeft" data-wow-duration="2s">
                                <div class="b-link-new wow fadeInLeft" data-wow-duration="2s">
                                    <a href="#"><img class="img-responsive" src="img/news-demo.jpg" alt="intro">
                                        <p class="b-para-news"><span class="intro">Title của tin tức</span>
                                        </p>
                                    </a>
                                    <!-- Date post -->
                                    <span class="card-view" style="padding-left:10px;">29/3/2017</span>
                                    <!-- /Date post -->
                                    <!-- View -->
                                    • <span class="glyphicon glyphicon-eye-open">1069</span>
                                    <!-- /View -->
                                </div>
                            </div>
                            <div class="col-sm-6 wow fadeInLeft" data-wow-duration="2s">
                                <div class="b-link-new wow fadeInLeft" data-wow-duration="2s">
                                    <a href="#"><img class="img-responsive" src="img/news-demo.jpg" alt="intro">
                                        <p class="b-para-news"><span class="intro">Title của tin tức</span>
                                        </p>
                                    </a>
                                    <!-- Date post -->
                                    <span class="card-view" style="padding-left:10px;">29/3/2017</span>
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
                                    <a href="#"><img class="img-responsive" src="img/news-demo.jpg" alt="intro">
                                        <p class="b-para-news"><span class="intro">Title của tin tức</span>
                                        </p>
                                    </a>
                                    <!-- Date post -->
                                    <span class="card-view" style="padding-left:10px;">29/3/2017</span>
                                    <!-- /Date post -->
                                    <!-- View -->
                                    • <span class="glyphicon glyphicon-eye-open">1069</span>
                                    <!-- /View -->
                                </div>
                            </div>
                            <div class="col-sm-6 wow fadeInLeft" data-wow-duration="2s">
                                <div class="b-link-new wow fadeInLeft" data-wow-duration="2s">
                                    <a href="#"><img class="img-responsive" src="img/news-demo.jpg" alt="intro">
                                        <p class="b-para-news"><span class="intro">Title của tin tức</span>
                                        </p>
                                    </a>
                                    <!-- Date post -->
                                    <span class="card-view" style="padding-left:10px;">29/3/2017</span>
                                    <!-- /Date post -->
                                    <!-- View -->
                                    • <span class="glyphicon glyphicon-eye-open">1069</span>
                                    <!-- /View -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--/NEWS -->
                <!--FOOTER -->
            </div>
	<jsp:include page="layout/_footer.jsp"></jsp:include>