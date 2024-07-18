<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>Carousel Slider Bootstrap 5</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .carousel-item {
            height: 500px;
            color: white;
            position: relative;
            /*border: 1px solid red;*/
        }
    </style>
</head>
<body>
<div id="myCarousel" class="carousel slide" data-bs-ride="carousel" >
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner" >
        <div class="carousel-item active" >
            <!--            <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>-->
            <img src="resources/images/img1.jpg" class="d-block h-100 w-100" alt="...">
            <div class="container">
                <div class="carousel-caption text-start">
                    <!--                    <h1>Example headline.</h1>-->
                    <!--                    <p>Some representative placeholder content for the first slide of the carousel.</p>-->
                    <!--                    <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>-->
                    <!--                    <img src="../../images/img1.jpg" alt="" width="800px" height="400px">-->
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <!--            <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>-->
            <img src="resources/images/img11.jpg" class="d-block h-100 w-100" alt="...">
            <div class="container">
                <div class="carousel-caption">
                    <!--                    <h1>Another example headline.</h1>-->
                    <!--                    <p>Some representative placeholder content for the second slide of the carousel.</p>-->
                    <!--                    <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>-->
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <!--            <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>-->
            <img src="resources/images/img12.jpg" class="d-block h-100 w-100" alt="...">
            <div class="container">
                <div class="carousel-caption text-end">
                    <!--                    <h1>One more for good measure.</h1>-->
                    <!--                    <p>Some representative placeholder content for the third slide of this carousel.</p>-->
                    <!--                    <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>-->
                </div>
            </div>
        </div>
        <!--        <div class="carousel-item">-->
        <!--            <img src="images/img4.jpg" class="d-block w-100" alt="...">-->
        <!--        </div>-->
        <!--        <div class="carousel-item">-->
        <!--            <img src="images/img5.jpg" class="d-block w-100" alt="...">-->
        <!--        </div>-->
        <!--        <div class="carousel-item">-->
        <!--            <img src="images/img6.jpg" class="d-block w-100" alt="...">-->
        <!--        </div>-->
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
