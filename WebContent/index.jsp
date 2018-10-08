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
    <title>Stats Royal</title>

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

    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122658477-1"></script>

    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-122658477-1');
    </script>

    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.1.0/cookieconsent.min.css" />
    <script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.1.0/cookieconsent.min.js"></script>
    <script>
        window.addEventListener("load", function(){
            window.cookieconsent.initialise({
                "palette": {
                    "popup": {
                        "background": "#237afc"
                    },
                    "button": {
                        "background": "transparent",
                        "text": "#fff",
                        "border": "#fff"
                    }
                },
                "position": "bottom-right",
                "content": {
                    "href": "cookiePolicy.jsp"
                }
            })});
    </script>
</head>
<body>
<script type="text/javascript" src="//cdn.chitika.net/getads.js" async></script>
<div class="limiter">
    <div class="container-login100">
        <div class="pub">
            <script type="text/javascript">
                ( function() {
                    if (window.CHITIKA === undefined) { window.CHITIKA = { 'units' : [] }; };
                    var unit = {"calltype":"async[2]","publisher":"statsroyal","width":160,"height":600,"sid":"Chitika Default"};
                    var placement_id = window.CHITIKA.units.length;
                    window.CHITIKA.units.push(unit);
                    document.write('<div id="chitikaAdBlock-' + placement_id + '"></div>');
                }());
            </script>
            <script type="text/javascript" src="//cdn.chitika.net/getads.js" async></script>
        </div>
        <div class="wrap-login100">
            <form class="login100-form validate-form" method="POST" action="ServletCombat">
					<span class="login100-form-title p-b-26">
						Welcome to <br> Stats Royal
					</span>

                <div class="wrap-input100 validate-input" data-validate="Player doesn't exist.">
                    <input class="input100" type="text" name="player1" required="required">
                    <span class="focus-input100" data-placeholder="Player 1"></span>
                </div>


                <div class="wrap-input100 validate-input" data-validate="Player doesn't exist.">
                    <input class="input100" type="text" name="player2" required="required">
                    <span class="focus-input100" data-placeholder="Player 2"></span>
                </div>

                ${ErreurMatch}
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
        <div class="pub">
            <script type="text/javascript">
                ( function() {
                    if (window.CHITIKA === undefined) { window.CHITIKA = { 'units' : [] }; };
                    var unit = {"calltype":"async[2]","publisher":"statsroyal","width":160,"height":600,"sid":"Chitika Default"};
                    var placement_id = window.CHITIKA.units.length;
                    window.CHITIKA.units.push(unit);
                    document.write('<div id="chitikaAdBlock-' + placement_id + '"></div>');
                }());
            </script>
            <script type="text/javascript" src="//cdn.chitika.net/getads.js" async></script>
        </div>
    </div>

</div>

<script src=ressources/js/index.js></script>
</body>
</html>
