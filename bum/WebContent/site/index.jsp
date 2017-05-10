<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp"></jsp:include>
   <div class="main-page col-xs-8 col-sm-8 container-fluid">
                <!--Intro -->
                <div class="b-intro container-fluid wow fadeInDown" data-wow-duration="2s">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="300" height="43" viewBox="0 0 300 43">
                        <image xlink:href="data:img/png;base64,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" width="300" height="43" />
                    </svg>
                    <!-- Link intro -->
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="img/intro-demo.jpg" alt="Chania">
                            </div>
                            <div class="item">
                                <img src="img/intro-demo.jpg" alt="Chania">
                            </div>
                        </div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!--
        <div class="b-link-intro">
          <a href="#"><img src="img/intro-demo.jpg" alt="intro">
            <p class="b-para-intro"><span class="intro">Đây là một cuộc thi tầm cỡ với đội ngũ tổ chức chuyên nghiệp ...</span>
              <br>

              <span class="b-date-post">29/3/2017</span>

              <span class="b-view-intro"><span class="glyphicon glyphicon-eye-open"></span> - 1069</span>
            </p>
          </a>
        </div>  /Link intro -->
                </div>
                <!--/Intro -->
                <!-- NEWS-->
                <div class="b-news container-fluid wow fadeInLeft" data-wow-duration="2s">
                    <div class="b-news-img" style="position:relative;padding-top:10px;">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="300" height="43" viewBox="0 0 300 43">
                            <image xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAArCAYAAADCD7V5AAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAABmJLR0QAAAAAAAD5Q7t/AAAACXBIWXMAAAsSAAALEgHS3X78AAAKFElEQVR42u2d228U1x3HPzO7a3svXq/xrm2MMRiHFhMCCdCQ0CYFqYlQqqp9qNqHVuqfVfUpqvIUVWnVKqqqJMqtSSgkISVcA76AjQ2+e3e9951z+rAXz+7OgqkJe/HvI6SdObff98zi355zZuZ3jOQn57TWoJVGa7C0RmsDjUJrA6U1WoHWoLXGKn6W6igNmkKa0oVyqlTGVk9pUOjyuS6VVUV7WqOhYM/ehk1boR0Dhb2NUvlSWdBGwXZJT0V+0U6FhhrNpTK1drQ2UOhKfba2KutW9t+ep7St3xo0VW3YtVPHFrrKDnXas+UZDjbq9bVsd/P7sV87ynkO+imlGVBPV9Eu1f2zXT9w7ivU2oT6darTKB2X6tg0UdSA/dqw2X65XFE35fMqe2U9ukIDDm1S3abt2K4Fu66qxJq2y+eqkGYAFigUxX8th9loAYIgCFtFHJYgCC2DOCxBEFoGcViCILQM4rAEQWgZxGEJgtAyiMMSBKFlcDdagPBwjowF0YaB1gpVfEZMKbh5J07O0ts3IAgthDisJqa328MbpwfJA0oVHJZSimuTca5OxhotTxCeOjIlbGKGIt6aNEtpzl9ZabQ0QWgI4rCamD39XTVpl29FiSXyjZYmCA1BHFYTM1w1wsrkLC5eW2u0LEFoGOKwmpQOj0k41FGR9tX1dVIZq9HSBKFhtOyiu8tjks+24vvmW8OyNH/62x20AovC3cF48uFTwQ6PScDrQmuIJ3Ok2/j6CDuTbTss//AAXf27AFUVVmPzRKPKn3ozsRg2Q5GKppm/PAtAeCxMz57ezXrFMvPXF1mf37wzdvJX48x8u8DcjaXH0nvg+TDhvYEKvfmc4vy7s1uq/9zxMOGBTnQh5gso0KrQP1QhlEdRcjEuTCE8jj1veTXLv79ZBuC1FyN0dbpRqEJIHAVKK/71xSLRjVxNeBmAk+MhQt0daEp3DgtSEimLYwd7UAre/mCWdDZboz/o9zAy6CMc8hDwejAMA0trUmnFejzDg5UMcwtJcXZCU7Jth9XZGyQwspva6DrK4Vg55sUfxMoOKxDppv9gf035tblYhcMy3SbPvf4MwX4fNz6dgS0+kxTZG2D/0b4KDbmMtWWHtWckwOjB7kJ1pao+i8cl6fY0W97de4mywxofDRL0e1A256OU4v0LS+Tyzn3aP+RnKOytqgMPVjIAJFJ5VmOVziro9/Cj8RDDQ76yjXJdwN8Fu4Ie9u8OkDsUYnI2wZXJKOmsTEGF5qFlp4Ql9j0/SHfYx9fv3iKT3Nl3z8KhDtCa2YVURfozwwFOH+3DNLYWtM1lGjyzN8BQv5fPLy+xtJZrdNcEAWiTRfddw0F+8rtn6RnwN1pKQzENA4DZxWQ57ciBIGdORHC7Hv+r7up08eoLEcKhzkZ3TRCANnFYAN7uTk7/dpw9432NltIw3vrnXf74zhST9xIAjAz6ePno9q6Hy2Vw6khf2RkKQiPZ9pQwenuG+Mz9ijjgSsPeM8cw3ZXNq7zFxHv/rYzbrTT53JNZ4HW5TY7/fIyeQS/XPpq1xbt+cnzx0TwXvzBqYs3/5tejeNyumvJvvj0Jxff/Sv3OPoUF7Q6PyU+Ph+vmT88nmJhJEN3IgWEQ6vYwMuhlKOyrKLcWy/LltXWUlvcWhcazbYdlpTPk05maTSicnIXWmtRawnETiifJ2IlBeiI+Lvx98omva8WiWcdNKFSdv+fF5bTjJhTfN0fGgng7XeV7ACW01nx6aZnJexsVGypEN3LcmU8wMujjxcO9WAquTsW4MR1FKRldCc1Byy+61yM8EuTsHw5z/p0J1heS22+wxTi0P+CYfn0qxtRcom69u/eTWJZiPZ4nmsg9FecqCFulbdawnPAFOznz+0MMj+9qtJSnSijgodvnqUlXWvPtxKOjPMwupIgl5M6g0Hy0tcMCcHlcnPrlGEfPDrNT1o17gx7H9JX1LGl5tUdoYdp2SljND18aJDTgxcq3/x9sp8flmL6R2tnPqQmtT1s5rOhigkwiR/9o0DF/YLSH1tzv9jHZISNJYefRVlPCfNbi4l9vcfvCfKOlNJRMnddp/N62+n0SdiBt5bCgcJv+xmdzfPmPCaxcK0z/Hv82nMt8+BBqLea8YB4OddDV6UIQWpW2c1gl5r9b4+O3bpBYTzdaykNJpOuMhrrqj4a6fc55pVhZ6xs5x1A0pmFw7GDPIzVFQp2cPRkh6Pc8sqwgPE3a1mEBxJZTfPjn6yxMRRstpS71YlwdPtDtmL4n0kXAwWFlc4q8LWLFzTtxx/rjo92MDdd/57Lb7+b0sT76e7t47aUBnj0QxDRlUUxoDtraYQHk0haf/+UWN8/fb7QUR6bnnB9qffm5XZw4FMLtKjgLw4D9Qz7e+PGgY/l7VQ/HXp2MOUYnNQyDV16I8OoLYQb7uujqcNHhMenr6eD5H4Q49/Ig3uK00WUaHD4Q5LVTA7L+JTQFO+J/odZw5eM5VuYTnPrFPtwdzbOOc20qxtkTEdxVsy+XafCzF/s5czxCPGPhcYNpmOU4VjXtTFeOqLI5xSeXlnn91ICj3dE9fvbt9leG9LJtJWYnIM5KaBLafoRlZ+67dd5/8ybx1eZZ10qmLT78qn7UVNM08HvdDw0PMzWXYOZB7Uht5kGSzy4vb1vj5dvrJOQZLqEJ2FEOCyC2nOb9N28yP9E861pfXl/j4tX/bzecB8tpPriwWDf/xnScj75eJJd//OfPtNZ8c3ONidmNRl8iQQB2yJSwmmza4tO3Jzny6m6OvLK70XIAeO/CInNLac6eiODrevTvSD6vuHRrjf9cWatYbHdi8l6ChZUMJ8dD7B3ysZUnS5fWM1z6bp3VaGZL5QXhafC9OayN+yuYLld5owkNqPyjpxXJ1SSrd1eK9YpbVmhFJp6pKLd6L0YqlmFzMwlNbHnrURm0hm8/vs/q/RQnzw1vu7/T03E8LrOwIUVBDvoxBzVXJ2Ncn4pzcK+f/bt9DOzqwtvpwvSYZLMWybTFwkqamYUUN6fjpLLWlqMpxJN5PvxqiUDAzb5BP/29HQR8bjwuF4rCIxHxjRxLaxlmFpKsRrPfRzgxQdgWRvKTc9oejM7ShfhUGoXWBkprdHFXFq01lj0OlCrGeYKaeFi6ql5h45jN+FHV8bBKsaJUMU9V2dlsx6jYRUaXy5fKgjYKtkt6KvLLMak2NWAY5C1t02wLMKirNRuO8bDKsaUq6lb2356ntK3fGjRVbdi1U8cWusoOddqz5RkONur1tWx38/uxXzvKeQ76KaUZBeftpIvN2GAVtm3XD5z7CrU2oX6d6jRKx6U6Nk0UNWC/Nmy2Xy5X1F3eAaraXlmPrtCAQ5tUt2k7tmvBrqsqsabt8nnhR10bgAWKwp2WVnxJbcetYTmh6kXfEwShqRCHJQhCyyAOSxCElkEcliAILYM4LEEQWob/AcYKcmPcVYFjAAAAAElFTkSuQmCC" width="300" height="43" />
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
                <!--/NEWS -->
                <!--Bai du thi -->
                <div class="b-news container-fluid wow fadeInLeft" data-wow-duration="2s">
                    <div class="b-news-img" style="position:relative;padding-top:10px;">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="300" height="43" viewBox="0 0 300 43">
                            <image xlink:href="data:img/png;base64,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" width="303" height="43" />
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
                                <a href="#"><img class="img-responsive" src="http://tuoitre.hcmute.edu.vn/wp-content/uploads/2017/05/2.jpg" alt="intro">
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
                <!--/bai du thi -->
            </div>
            

           <jsp:include page="layout/_footer.jsp"></jsp:include>