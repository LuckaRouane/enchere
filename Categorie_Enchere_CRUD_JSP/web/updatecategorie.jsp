<%@page import="models.*" %>
<%
    Categorie categorie=(Categorie) request.getAttribute("categorie");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update categorie</title>
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
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                    <h2>Update catégorie</h2>
                </div>
            </div>
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2">
                    <form method="POST" action="CategorieUpdate" class="form-inline">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <label for="nom" class="sr-only">Nom de catégorie</label>
                                <input type="hidden" name="idc" value="<%= categorie.getIdcategorie() %>">
                                <input type="text" name="nom" class="form-control" id="nom" value="<%= categorie.getNomCategorie() %>">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-default btn-block" >Valider</button>
                        </div>
                    </form>
                </div>
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
