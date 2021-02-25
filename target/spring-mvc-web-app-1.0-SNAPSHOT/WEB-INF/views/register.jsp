<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE>
<html lang="tr">
<head>
    <title>Kayıt</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">    <!-- JavaScript Bundle with Popper -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
</head>
<body class="text-center">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
        <div class="inner">
            <h3 class="masthead-brand">Spring MVC Web App</h3>
            <nav class="nav nav-masthead justify-content-center">
                <a class="nav-link" href="index"><span class="fa fa-home"></span>  Anasayfa</a>
                <a class="nav-link active" href="register"><span class="fa fa-plus"></span>  Kayıt</a>
                <a class="nav-link" href="list"><span class="fa fa-list-alt"></span>  Listele</a>
            </nav>
        </div>
    </header>

    <main role="main" class="inner cover">
        <%--@elvariable id="person" type=""--%>
        <form:form action="/add" method="post" modelAttribute="person" class="col-md-8 offset-md-2">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="">İsim Soyisim</span>
                </div>
                <form:input path="firstName" type="text" class="form-control" />
                <form:input path="lastName" type="text" class="form-control" />
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">Kan Grubu</label>
                </div>
                <form:select path="bloodGroup" class="custom-select" id="inputGroupSelect01">
                    <option value="A Rh+" selected>A Rh+</option>
                    <option value="A Rh-">A Rh-</option>
                    <option value="B Rh+">B Rh+</option>
                    <option value="B Rh-">B Rh-</option>
                    <option value="AB Rh+">AB Rh+</option>
                    <option value="AB Rh-">AB Rh-</option>
                    <option value="0 Rh+">0 Rh+</option>
                    <option value="0 Rh-">0 Rh-</option>
                </form:select>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">Cep No:</span>
                </div>
                <form:input path="phoneNumber" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1" />
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">Adres</span>
                </div>
                <form:textarea path="address" class="form-control" aria-label="With textarea" />
            </div>
            <button type="submit" class="btn btn-success btn-lg">Kaydet</button>
        </form:form>
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
