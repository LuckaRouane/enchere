<%@page import="models.*" %>
<%
    Categorie[] categories = (Categorie[]) request.getAttribute("categories");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liste categorie</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="./WEB-INF/assets/css/animate.css">
        <link rel="stylesheet" href="./WEB-INF/assets/css/icomoon.css">
        <link rel="stylesheet" href="./WEB-INF/assets/css/bootstrap.css">
        <link rel="stylesheet" href="./WEB-INF/assets/css/flexslider.css">
        <link rel="stylesheet" href="./WEB-INF/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="./WEB-INF/assets/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="./WEB-INF/assets/css/style.css">
        <script src="./WEB-INF/assets/js/modernizr-2.6.2.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <% for (Categorie categorie : categories) {%>
                <div class="col-md-4 col-sm-4 text-center">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
                        <span class="icon">
                            <i class="icon-credit-card"></i>
                        </span>
                        <h3><%= categorie.getNomCategorie()%></h3>
                        <form action="CategorieUpdate" method="POST">
                            <input type="hidden" name="idc" value="<%= categorie.getIdcategorie()%>">
                            <input type="hidden" name="nom" value="<%= categorie.getNomCategorie()%>">
                            <p><input type="submit" class="btn btn-primary btn-outline" value="Modifier"></p>
                        </form>
                    </div>
                </div>
                <% }%>
            </div>
        </div>

        <script src="./WEB-INF/assets/js/jquery.min.js"></script>
        <script src="./WEB-INF/assets/js/jquery.easing.1.3.js"></script>
        <script src="./WEB-INF/assets/js/bootstrap.min.js"></script>
        <script src="./WEB-INF/assets/js/jquery.waypoints.min.js"></script>
        <script src="./WEB-INF/assets/js/owl.carousel.min.js"></script>
        <script src="./WEB-INF/assets/js/jquery.countTo.js"></script>
        <script src="./WEB-INF/assets/js/jquery.flexslider-min.js"></script>
        <script src="./WEB-INF/assets/js/main.js"></script>
    </body>
</html>
