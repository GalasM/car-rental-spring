<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<% request.setAttribute("isAdmin", request.isUserInRole("ADMIN")); %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" data-ng-app="app">
<head>
    <meta charset="UTF-8">
    <title>G-F-G CarRent - Wypożyczalnia samochodów</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="http://code.jquery.com/jquery-1.11.1.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0-beta.4/angular.min.js"></script>


    <style>
        .table tr {
            text-align: center;
        }

        .table td {
            text-align: center;
        }
    </style>
</head>
<body ng-app>
<nav class="navtop">
    <img src="../../resources/images/newlogo.png">
    <ul>
        <c:if test="${isAdmin}">
            <li><a href="${contextPath}/adminPanel">Panel administratora</a></li>
        </c:if>
        <li><a href="${contextPath}/index">Strona Główna</a></li>
        <li><a href="${contextPath}/flota">Flota</a></li>
        <li><a class="active" href="${contextPath}/locations">Lokalizacje</a></li>
        <li><a href="${contextPath}/ofirmie">O firmie</a></li>
        <li><a href="${contextPath}/kontakt">Kontakt</a></li>
        <li><a href="${contextPath}/offer">Oferta</a></li>
    </ul>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
        </form>
        <div class="logreg">
            <button type="button" class="btn btn-dark" onclick="window.location.href='/panel'">Otwórz profil</button>
            <button type="button" class="btn btn-dark" onclick="document.forms['logoutForm'].submit()">Wyloguj się
            </button>
        </div>
    </c:if>


    <c:if test="${pageContext.request.userPrincipal.name == null}">
        <div class="logreg">
            <button type="button" class="btn btn-light" data-toggle="modal" data-target="#myModalLogin">
                Zaloguj się
            </button>
            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#myModalRegister">
                Rejestracja
            </button>
        </div>
    </c:if>
</nav>

<header class="header">
    <h3>"Bądź wzorcem jakości. Niektórzy ludzie nie przywykli do środowiska, gdzie oczekuje się doskonałości."</h3>
</header>

<main class = "main">
    <h2>Nasze lokalizacje:</h2>
    <table class="table table-hover">
        <thead class="thead-light">
        <tr>
            <th>Miasto</th>
            <th>Ulica</th>
            <th>Telefon kontaktowy</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${locations}" var="locations">
            <tr>
                <td>${locations.miasto}</td>
                <td>${locations.adres}</td>
                <td>${locations.telefon}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


</main>

<footer class = "footer">
    <p>Autorzy: Karol Głuch, Michał Galas, Sławomir Faron.</p>
    <p>Copyright &copy 2020 G-F-G CarRent. Wszelkie prawa zastrzeżone.</p>
</footer>
</body>
</html>