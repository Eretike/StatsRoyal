<%--
  Created by IntelliJ IDEA.
  User: BELLION B
  Date: 04/07/2018
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.bellioba.statsroyal.api.bean.Joueur" %>
<html>
<head>
    <%
        Joueur joueur1 = (Joueur) request.getSession().getAttribute("joueur1");
        Joueur joueur2 = (Joueur) request.getSession().getAttribute("joueur2");
    %>
    <title><%=joueur1.getNom()%> VS <%=joueur2.getNom()%>
    </title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../ressources/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ressources/fonts/font-awesome-4.7.0/css/all.css">

    <link rel="stylesheet" type="text/css" href="../ressources/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../ressources/css/resultat/resultat.css">

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122658477-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'UA-122658477-1');
    </script>

    <link rel="stylesheet" type="text/css"
          href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.1.0/cookieconsent.min.css"/>
    <script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.1.0/cookieconsent.min.js"></script>
    <script>
        window.addEventListener("load", function () {
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
            })
        });
    </script>

</head>
<body>

<div class="limiter">
    <div class="container-about">
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
        <div class="wrap-about">
            <center><h1><font color="blue"><%=joueur1.getNom()%>
            </font> VS <font color="red"><%=joueur2.getNom()%>
        </font></h1></center>
            <br>
            <button class="accordion"><h2>Kills</h2>
                <br>
                <h3>Totals kills:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getTotalKills()/(joueur1.getStats().getTotalKills()+joueur2.getStats().getTotalKills())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getTotalKills()/(joueur1.getStats().getTotalKills()+joueur2.getStats().getTotalKills())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getTotalKills()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getTotalKills()/(joueur1.getStats().getTotalKills()+joueur2.getStats().getTotalKills())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getTotalKills()/(joueur1.getStats().getTotalKills()+joueur2.getStats().getTotalKills())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getTotalKills()%>
                    </div>
                </div>
            </button>

            <div class="panel">
                <h3>Solo kills:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSoloKills()/(joueur1.getStats().getSoloKills()+joueur2.getStats().getSoloKills())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSoloKills()/(joueur1.getStats().getSoloKills()+joueur2.getStats().getSoloKills())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSoloKills()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSoloKills()/(joueur1.getStats().getSoloKills()+joueur2.getStats().getSoloKills())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSoloKills()/(joueur1.getStats().getSoloKills()+joueur2.getStats().getSoloKills())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSoloKills()%>
                    </div>
                </div>

                <h3>Duo kills:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getDuoKills()/(joueur1.getStats().getDuoKills()+joueur2.getStats().getDuoKills())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getDuoKills()/(joueur1.getStats().getDuoKills()+joueur2.getStats().getDuoKills())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getDuoKills()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getDuoKills()/(joueur1.getStats().getDuoKills()+joueur2.getStats().getDuoKills())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getDuoKills()/(joueur1.getStats().getDuoKills()+joueur2.getStats().getDuoKills())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getDuoKills()%>
                    </div>
                </div>

                <h3>Squad kills:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSquadKills()/(joueur1.getStats().getSquadKills()+joueur2.getStats().getSquadKills())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSquadKills()/(joueur1.getStats().getSquadKills()+joueur2.getStats().getSquadKills())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSquadKills()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSquadKills()/(joueur1.getStats().getSquadKills()+joueur2.getStats().getSquadKills())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSquadKills()/(joueur1.getStats().getSquadKills()+joueur2.getStats().getSquadKills())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSquadKills()%>
                    </div>
                </div>
            </div>
            <br>

            <button class="accordion"><h2>Wins</h2>
                <br>
                <h3>Totals Wins:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getTotalWins()/(joueur1.getStats().getTotalWins()+joueur2.getStats().getTotalWins())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getTotalWins()/(joueur1.getStats().getTotalWins()+joueur2.getStats().getTotalWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getTotalWins()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getTotalWins()/(joueur1.getStats().getTotalWins()+joueur2.getStats().getTotalWins())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getTotalWins()/(joueur1.getStats().getTotalWins()+joueur2.getStats().getTotalWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getTotalWins()%>
                    </div>
                </div>
            </button>

            <div class="panel">
                <h3>Solo Wins:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSoloWins()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSoloWins()%>
                    </div>
                </div>

                <h3>Duo Wins:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getDuoWins()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getDuoWins()%>
                    </div>
                </div>

                <h3>Squad Wins:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSquadWins()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSquadWins()%>
                    </div>
                </div>
            </div>

            <button class="accordion"><h2>Solo Stats</h2>
                <br>
                <h3>Solo Match Played:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSoloMatchesPlayed()/(joueur1.getStats().getSoloMatchesPlayed()+joueur2.getStats().getSoloMatchesPlayed())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSoloMatchesPlayed()/(joueur1.getStats().getSoloMatchesPlayed()+joueur2.getStats().getSoloMatchesPlayed())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSoloMatchesPlayed()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSoloMatchesPlayed()/(joueur1.getStats().getSoloMatchesPlayed()+joueur2.getStats().getSoloMatchesPlayed())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSoloMatchesPlayed()/(joueur1.getStats().getSoloMatchesPlayed()+joueur2.getStats().getSoloMatchesPlayed())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSoloMatchesPlayed()%>
                    </div>
                </div>
            </button>

            <div class="panel">
                <h3>Solo Wins:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSoloWins()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSoloWins()%>
                    </div>
                </div>

                <h3>Solo top 10:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSoloTop10()/(joueur1.getStats().getSoloTop10()+joueur2.getStats().getSoloTop10())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSoloTop10()/(joueur1.getStats().getSoloTop10()+joueur2.getStats().getSoloTop10())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSoloTop10()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSoloTop10()/(joueur1.getStats().getSoloTop10()+joueur2.getStats().getSoloTop10())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSoloTop10()/(joueur1.getStats().getSoloTop10()+joueur2.getStats().getSoloTop10())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSoloTop10()%>
                    </div>
                </div>

                <h3>Solo Top 25:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSoloTop25()/(joueur1.getStats().getSoloTop25()+joueur2.getStats().getSoloTop25())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSoloTop25()/(joueur1.getStats().getSoloTop25()+joueur2.getStats().getSoloTop25())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSoloTop25()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSoloTop25()/(joueur1.getStats().getSoloTop25()+joueur2.getStats().getSoloTop25())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSoloTop25()/(joueur1.getStats().getSoloTop25()+joueur2.getStats().getSoloTop25())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSoloTop25()%>
                    </div>
                </div>
            </div>

            <button class="accordion"><h2>Duo Stats</h2>
                <br>
                <h3>Duo Match Played:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getDuoMatchesPlayed()/(joueur1.getStats().getDuoMatchesPlayed()+joueur2.getStats().getDuoMatchesPlayed())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getDuoMatchesPlayed()/(joueur1.getStats().getDuoMatchesPlayed()+joueur2.getStats().getDuoMatchesPlayed())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getDuoMatchesPlayed()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getDuoMatchesPlayed()/(joueur1.getStats().getDuoMatchesPlayed()+joueur2.getStats().getDuoMatchesPlayed())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getDuoMatchesPlayed()/(joueur1.getStats().getDuoMatchesPlayed()+joueur2.getStats().getDuoMatchesPlayed())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getDuoMatchesPlayed()%>
                    </div>
                </div>
            </button>

            <div class="panel">
                <h3>Duo Wins:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getDuoWins()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getDuoWins()%>
                    </div>
                </div>

                <h3>Duo top 10:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getDuoTop5()/(joueur1.getStats().getDuoTop5()+joueur2.getStats().getDuoTop5())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getDuoTop5()/(joueur1.getStats().getDuoTop5()+joueur2.getStats().getDuoTop5())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getDuoTop5()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getDuoTop5()/(joueur1.getStats().getDuoTop5()+joueur2.getStats().getDuoTop5())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getDuoTop5()/(joueur1.getStats().getDuoTop5()+joueur2.getStats().getDuoTop5())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getDuoTop5()%>
                    </div>
                </div>

                <h3>Duo Top 25:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getDuoTop12()/(joueur1.getStats().getDuoTop12()+joueur2.getStats().getDuoTop12())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getDuoTop12()/(joueur1.getStats().getDuoTop12()+joueur2.getStats().getDuoTop12())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getDuoTop12()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getDuoTop12()/(joueur1.getStats().getDuoTop12()+joueur2.getStats().getDuoTop12())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getDuoTop12()/(joueur1.getStats().getDuoTop12()+joueur2.getStats().getDuoTop12())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getDuoTop12()%>
                    </div>
                </div>
            </div>
            <button class="accordion"><h2>Squad Stats</h2>
                <br>
                <h3>Squad Match Played:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSquadMatchesPlayed()/(joueur1.getStats().getSquadMatchesPlayed()+joueur2.getStats().getSquadMatchesPlayed())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSquadMatchesPlayed()/(joueur1.getStats().getSquadMatchesPlayed()+joueur2.getStats().getSquadMatchesPlayed())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSquadMatchesPlayed()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSquadMatchesPlayed()/(joueur1.getStats().getSquadMatchesPlayed()+joueur2.getStats().getSquadMatchesPlayed())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSquadMatchesPlayed()/(joueur1.getStats().getSquadMatchesPlayed()+joueur2.getStats().getSquadMatchesPlayed())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSquadMatchesPlayed()%>
                    </div>
                </div>
            </button>

            <div class="panel">
                <h3>Squad Wins:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSquadWins()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSquadWins()%>
                    </div>
                </div>

                <h3>Squad top 10:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSquadTop3()/(joueur1.getStats().getSquadTop3()+joueur2.getStats().getSquadTop3())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSquadTop3()/(joueur1.getStats().getSquadTop3()+joueur2.getStats().getSquadTop3())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSquadTop3()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSquadTop3()/(joueur1.getStats().getSquadTop3()+joueur2.getStats().getSquadTop3())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSquadTop3()/(joueur1.getStats().getSquadTop3()+joueur2.getStats().getSquadTop3())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSquadTop3()%>
                    </div>
                </div>

                <h3>Squad Top 25:</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar"
                         style="width: <%=joueur1.getStats().getSquadTop6()/(joueur1.getStats().getSquadTop6()+joueur2.getStats().getSquadTop6())*100%>%"
                         aria-valuenow="<%=joueur1.getStats().getSquadTop6()/(joueur1.getStats().getSquadTop6()+joueur2.getStats().getSquadTop6())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSquadTop6()%>
                    </div>
                    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar"
                         style="width: <%=joueur2.getStats().getSquadTop6()/(joueur1.getStats().getSquadTop6()+joueur2.getStats().getSquadTop6())*100%>%"
                         aria-valuenow="<%=joueur2.getStats().getSquadTop6()/(joueur1.getStats().getSquadTop6()+joueur2.getStats().getSquadTop6())*100%>"
                         aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSquadTop6()%>
                    </div>
                </div>
            </div>
            <script src="../ressources/js/resultat/acordion.js"></script>
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
</div
</body>
</html>
