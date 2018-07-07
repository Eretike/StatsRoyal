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
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="ressources/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ressources/css/util.css">
    <link rel="stylesheet" type="text/css" href="ressources/css/index.css">
    <!--===============================================================================================-->
  </head>
  <body>
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
        <form class="login100-form validate-form" method="POST" action="ServletCombat">
					<span class="login100-form-title p-b-26">
						Welcome to Fortnite Battle
					</span>
          <div class="wrap-input100 validate-input" data-validate = "Player doesn't exist.">
            <input class="input100" type="text" name="player1">
            <span class="focus-input100" data-placeholder="Player 1"></span>
          </div>

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


  <div id="dropDownSelect1"></div>

  <!--===============================================================================================-->
  <script src="ressources/vendor/jquery/jquery-3.2.1.min.js"></script>
  <!--===============================================================================================-->
  <script src="ressources/vendor/animsition/js/animsition.min.js"></script>
  <!--===============================================================================================-->
  <script src="ressources/vendor/bootstrap/js/popper.js"></script>
  <script src="ressources/vendor/bootstrap/js/bootstrap.min.js"></script>
  <!--===============================================================================================-->
  <script src="ressources/vendor/select2/select2.min.js"></script>
  <!--===============================================================================================-->
  <script src="ressources/vendor/daterangepicker/moment.min.js"></script>
  <script src="ressources/vendor/daterangepicker/daterangepicker.js"></script>
  <!--===============================================================================================-->
  <script src="ressources/vendor/countdowntime/countdowntime.js"></script>
  <!--===============================================================================================-->
  <script src="ressources/js/index.js"></script>

  </body>
</html>
