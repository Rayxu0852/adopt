<%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pet Knowledge</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>

    <!-- css files -->
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${path}/static/css/user/style.css" type="text/css" media="all" />
    <link href='${path}/static/css/user/simplelightbox.min.css' rel='stylesheet' type='text/css'>
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<!-- welcome -->
<div class="about" id="about">
    <div class="container">
        <h3 class="agile-title">welcome</h3>
        <div class="about-top w3ls-agile">
            <div class="col-md-6 red">
                <img class="img-responsive" src="/static/images/about/ab.jpg" alt="">
            </div>
            <div class="col-md-6 come">
                <div class="about-wel">
                    <h5>Few sentences about our
                        <span>Pets life</span>
                    </h5>
                    <p>Pets are part of people's family.
                        When people are sad, they always accompany people;
                        When people are happy, they are also good friends to share happiness with</p>
                    <ul>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>Health and Care of Cat and Dog</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>Hairdressing of Cat and Dog</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>Diet of Cat and Dog</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>Behave of Cat and Dog</li>
                    </ul>
                </div>
                <div class="button-styles">
                    <a href="#cat" data-toggle="modal" data-target="#Catbtn">Things when you should pay attention when you keep a cat</a>
                    <a href="#dog" data-toggle="modal" data-target="#Dogbtn">Things when you should pay attention when you keep a dog</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Gallery -->
<div id="gallery" class="gallery">
    <div class="container">
        <h3 class="agile-title">Gallery</h3>
    </div>
    <div class="agileinfo-gallery-row">
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/c1.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/c1.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/d1.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/d1.jpg" alt="" title="Dog Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/c2.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/c2.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/d2.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/d2.jpg" alt="" title="Dog Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/c3.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/c3.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/d3.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/d3.jpg" alt="" title="Dog Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/c4.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/c4.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="/static/images/about/d4.jpg" class="imghvr-hinge-right figure">
                <img src="/static/images/about/d4.jpg" alt="" title="Dog Life Image" />
            </a>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- Modal5 -->
<div class="modal fade" id="Catbtn" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-info">
                    <h4>Cat Life</h4>
                    <img src="/static/images/about/c.jpg" alt=" " class="img-responsive" />
                    <p class="para-agileits-w3layouts">
                        We can't keep a cat in a cage or at home. You need to take it out in the sun
                        every now and then and play with your cat. We also need to take care of the cat's
                        hair when we keep a cat
                   </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal5 -->
<div class="modal fade" id="Dogbtn" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-info">
                    <h4>Dog Life</h4>
                    <img src="/static/images/about/d.jpg" alt=" " class="img-responsive" />
                    <p class="para-agileits-w3layouts">
                        The time of feeding should be as far as possible according to the habits of the original owner.
                        Do not feed the dog too much sweet, salty and irritating food.
                        The newly arrived puppies, the owner has to feed them personally.
                        Over time, they will be able to establish a deep relationship with the pet dog and deepen the
                        degree of mutual trust.
                        Another important task of the owner is to help the little one overcome the pain of leaving his
                        mother and adapt to the new environment as soon as possible.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Gallery -->
<!-- js -->
<script src="${path}/static/js/jquery-3.4.1.min.js"></script>
<script src="${path}/static/bootstrap/js/bootstrap.min.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->

<!-- simple-lightbox -->
<script src="${path}/static/js/user/simple-lightbox.min.js"></script>
<script>
    $(function () {
        var gallery = $('.agileinfo-gallery-row a').simpleLightbox({
            navText: ['&lsaquo;', '&rsaquo;']
        });
    });
</script>


<!-- Light-box css -->
<!-- //simple-lightbox -->

</body>
</html>
