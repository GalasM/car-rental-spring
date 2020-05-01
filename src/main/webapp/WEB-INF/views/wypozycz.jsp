<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Base64" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<% request.setAttribute("isAdmin", request.isUserInRole("ADMIN")); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>G&G CarRent - Wypożyczalnia samochodów</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet">

    <script type="text/javascript">

        var dates = '${dates}';

        function DisableDates(date) {
            var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
            return [dates.indexOf(string) == -1];
        }

        $(document).ready(function () {
            var minDate = new Date();
            $("#rentDate").datepicker({
                showAnim: 'drop',
                numberOfMonth: 1,
                minDate: minDate,
                dateFormat: 'yy-mm-dd',
                beforeShowDay: DisableDates,
                onClose: function (selectedDate) {
                    $('#returnDate').datepicker("option", "minDate", selectedDate);
                }
            });

            $("#returnDate").datepicker({
                showAnim: 'drop',
                numberOfMonth: 1,
                minDate: minDate,
                dateFormat: 'yy-mm-dd',
                beforeShowDay: DisableDates,
                onClose: function (selectedDate) {
                    $('#rentDate').datepicker("option", "maxDate", selectedDate);
                }
            });

        });

    </script>

</head>
<body>
<nav class="navtop">
    <img src="../../resources/images/newlogo.png">
    <ul>
        <c:if test="${isAdmin}">
            <li><a href="${contextPath}/adminPanel">Panel administratora</a></li>
        </c:if>
        <li><a href="${contextPath}/index">Strona Główna</a></li>
        <li><a href="${contextPath}/flota">Flota</a></li>
        <li><a href="${contextPath}/locations">Lokalizacje</a></li>
        <li><a href="${contextPath}/ofirmie">O firmie</a></li>
        <li><a href="${contextPath}/kontakt">Kontakt</a></li>
        <li><a class="active" href="${contextPath}/offer">Oferta</a></li>
    </ul>

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
        </form>
        <div class="logreg">
            <h6>Zalogowany: <b>${pageContext.request.userPrincipal.name}</b></h6>
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

<main class="main">

    <center>
        <form action="${contextPath}/podsumowanieWypozyczenia/${ide}" method="post">
            Data wypożyczenia: </br>
            <input type="text" id="rentDate" name="rentDate" placeholder="Data wypożyczenia" required>
            </br>
            Data zwrotu:
            </br>
            <input type="text" id="returnDate" name="returnDate" placeholder="Data zwrotu" required>
            </br>
            Miejsce wypożyczenia: </br>
            <select name="locationsW">
                <c:forEach var="locations" items="${locations}">
                    <option value="${locations.id}" }>${locations.miasto} ${locations.adres}</option>
                </c:forEach>
            </select>
            </br>
            Miejsce zwrotu: </br>
            <select name="locationsZ">
                <c:forEach var="locations" items="${locations}">
                    <option value="${locations.id}" }>${locations.miasto} ${locations.adres}</option>
                </c:forEach>
            </select>
            </br>
            <button type="submit" class="btn btn-dark">Przejdz do podsumowania</button>
        </form>
    </center>

</main>

<footer class="footer">
    <p>Autorzy: Karol Głuch, Michał Galas, Sławomir Faron.</p>
    <p>Copyright &copy 2020 G-F-G CarRent. Wszelkie prawa zastrzeżone.</p>
</footer>
</body>
</html>