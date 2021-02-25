<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html lang="tr">
<head>
    <title>Kayıtları Listele</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap_4.4.1_css_bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome_4.7.0_css_font-awesome.css" rel="stylesheet">
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
        <c:if test="${empty personList}">
            <p class="lead">
                Listelenecek kayıt bulunamadı. Lütfen kayıt yapınız...
            </p>
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

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.slim.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap_4.4.1_js_bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.js@1.16.0_dist_umd_popper.js"></script>

</body>
</html>
