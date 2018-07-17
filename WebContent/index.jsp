<%--
  Created by IntelliJ IDEA.
  User: BELLION B
  Date: 04/07/2018
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fortnite Battle</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="ressources/css/dropDown.css">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="ressources/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/fonts/font-awesome-4.7.0/css/all.css">

    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/css/util.css">
    <link rel="stylesheet" type="text/css" href="ressources/css/index.css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>



</head>
<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form class="login100-form validate-form" method="POST" action="ServletCombat">
					<span class="login100-form-title p-b-26">
						Welcome to <br> Stats Royal
					</span>

                <div class="wrap-input100 validate-input" data-validate="Player doesn't exist.">
                    <input class="input100" type="text" name="player1">
                    <span class="focus-input100" data-placeholder="Player 1"></span>
                </div>


                <%--<div class="input-group">--%>
                    <%--<div id="radioBtn" class="btn-group">--%>
                        <%--<a class="btn btn-primary btn-sm active" data-toggle="fun" data-title="pc"><img src="ressources/commun/images/windows-brands.svg" height="20 px" width="20 px">a</a>--%>
                        <%--<a class="btn btn-primary btn-sm notActive" data-toggle="fun" data-title="ps"><img src="ressources/commun/images/playstation-brands.svg" height="20 px" width="20 px">b</a>--%>
                        <%--<a class="btn btn-primary btn-sm notActive" data-toggle="fun" data-title="xbox"><img src="ressources/commun/images/xbox-brands.svg" height="20 px" width="20 px">c</a>--%>
                    <%--</div>--%>
                    <%--<input type="hidden" name="fun" id="fun">--%>
                <%--</div>--%>


                <div class="wrap-input100 validate-input" data-validate="Player doesn't exist.">
                    <input class="input100" type="text" name="player2">
                    <span class="focus-input100" data-placeholder="Player 2"></span>
                </div>


                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">
                            Battle !
                        </button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

<script src="ressources/commun/js/radioButton.js"></script>

</body>
</html>
