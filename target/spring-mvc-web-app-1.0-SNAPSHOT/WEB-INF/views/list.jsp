<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Kayıtları Listele</title>
    <meta charset="utf-8">
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
                <a class="nav-link" href="register"><span class="fa fa-plus"></span>  Kayıt</a>
                <a class="nav-link active" href="list"><span class="fa fa-list-alt"></span>  Listele</a>
            </nav>
        </div>
    </header>

    <main role="main" class="inner cover d-flex justify-content-center align-items-center">
        <c:if test="${!empty personList}">
            <div class="table-responsive" style="height: 50vh;">
                <table class="table table-bordered table-striped mt-3 mb-3 text-center">
                    <thead class="thead-light">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">İsim</th>
                        <th scope="col">Soyisim</th>
                        <th scope="col">Kan Grubu</th>
                        <th scope="col">Telefon No</th>
                        <th scope="col">Adres</th>
                    </tr>
                    </thead>
                    <tbody class="text-light">
                    <c:forEach items="${personList}" var="person">
                        <tr>
                            <th scope="row">${person.id}</th>
                            <td>${person.firstName}</td>
                            <td>${person.lastName}</td>
                            <td>${person.bloodGroup}</td>
                            <td>${person.phoneNumber}</td>
                            <td>${person.address}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>

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
