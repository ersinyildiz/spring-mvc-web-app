<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html lang="tr">
<head>
    <title>Anasayfa</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">    <link href="/resources/css/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <style><%@include file="/resources/css/style.css"%></style>
</head>
<body class="text-center">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
        <div class="inner">
            <h3 class="masthead-brand">Spring MVC Web App</h3>
            <nav class="nav nav-masthead justify-content-center">
                <a class="nav-link active" href="index"><span class="fa fa-home"></span>  Anasayfa</a>
                <a class="nav-link" href="register"><span class="fa fa-plus"></span>  Kayıt</a>
                <a class="nav-link" href="list"><span class="fa fa-list-alt"></span>  Listele</a>
            </nav>
        </div>
    </header>

    <main role="main" class="inner cover">
        <p class="lead">Aşağıdaki butonlar ile ilgili sayfalara yönlendirme yapılmaktadır.</p>
        <a href="register" class="btn btn-lg btn-success mb-2"><span class="fa fa-plus"></span>  Kayıt Ekle</a>
        <a href="list" class="btn btn-lg btn-secondary mb-2"><span class="fa fa-list-alt"></span>    Kayıtları Listele</a>

    </main>

    <footer class="mastfoot mt-auto">
        <div class="inner">
            <p>Bu uygulama Spring Framework kullanımı üzerine test amaçlı geliştirilmiştir.</p>
            <hr class="bg-secondary">
            <p><a href="#"><span class="fa fa-twitter mr-3"></span></a><a href="#"><span class="fa fa-facebook mr-3"></span></a><a href="#"><span class="fa fa-instagram"></span></a></p>
        </div>
    </footer>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>
