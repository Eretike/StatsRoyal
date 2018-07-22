<%--
  Created by IntelliJ IDEA.
  User: BELLION B
  Date: 04/07/2018
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.bellioba.statsroyal.api.bean.Joueur"%>
<html>
<head>
    <%
        Joueur joueur1 = (Joueur) request.getSession().getAttribute("joueur1");
        Joueur joueur2 = (Joueur) request.getSession().getAttribute("joueur2");
    %>
    <title><%=joueur1.getNom()%> VS <%=joueur2.getNom()%></title>

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
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-122658477-1');
    </script>

    <script>
        (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-7273034286469953",
            enable_page_level_ads: true
        });
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



<h1><font color="blue"><%=joueur1.getNom()%></font> VS <font color="red"><%=joueur2.getNom()%></font></h1>
<br>
<button class="accordion"><h2>Kills</h2>
<br>
<h3>Totals kills:</h3>
<div class="progress">
    <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <%=joueur1.getStats().getTotalKills()/(joueur1.getStats().getTotalKills()+joueur2.getStats().getTotalKills())*100%>%" aria-valuenow="<%=joueur1.getStats().getTotalKills()/(joueur1.getStats().getTotalKills()+joueur2.getStats().getTotalKills())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getTotalKills()%></div>
    <div class="bg-danger progress-bar progress-bar-striped " role="progressbar" style="width: <%=joueur2.getStats().getTotalKills()/(joueur1.getStats().getTotalKills()+joueur2.getStats().getTotalKills())*100%>%" aria-valuenow="<%=joueur2.getStats().getTotalKills()/(joueur1.getStats().getTotalKills()+joueur2.getStats().getTotalKills())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getTotalKills()%></div>
</div>
</button>

<div class="panel">
    <h3>Solo kills:</h3>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <%=joueur1.getStats().getSoloKills()/(joueur1.getStats().getSoloKills()+joueur2.getStats().getSoloKills())*100%>%" aria-valuenow="<%=joueur1.getStats().getSoloKills()/(joueur1.getStats().getSoloKills()+joueur2.getStats().getSoloKills())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSoloKills()%></div>
        <div class="bg-danger progress-bar progress-bar-striped " role="progressbar" style="width: <%=joueur2.getStats().getSoloKills()/(joueur1.getStats().getSoloKills()+joueur2.getStats().getSoloKills())*100%>%" aria-valuenow="<%=joueur2.getStats().getSoloKills()/(joueur1.getStats().getSoloKills()+joueur2.getStats().getSoloKills())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSoloKills()%></div>
    </div>

    <h3>Duo kills:</h3>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <%=joueur1.getStats().getDuoKills()/(joueur1.getStats().getDuoKills()+joueur2.getStats().getDuoKills())*100%>%" aria-valuenow="<%=joueur1.getStats().getDuoKills()/(joueur1.getStats().getDuoKills()+joueur2.getStats().getDuoKills())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getDuoKills()%></div>
        <div class="bg-danger progress-bar progress-bar-striped " role="progressbar" style="width: <%=joueur2.getStats().getDuoKills()/(joueur1.getStats().getDuoKills()+joueur2.getStats().getDuoKills())*100%>%" aria-valuenow="<%=joueur2.getStats().getDuoKills()/(joueur1.getStats().getDuoKills()+joueur2.getStats().getDuoKills())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getDuoKills()%></div>
    </div>

    <h3>Squad kills:</h3>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <%=joueur1.getStats().getSquadKills()/(joueur1.getStats().getSquadKills()+joueur2.getStats().getSquadKills())*100%>%" aria-valuenow="<%=joueur1.getStats().getSquadKills()/(joueur1.getStats().getSquadKills()+joueur2.getStats().getSquadKills())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSquadKills()%></div>
        <div class="bg-danger progress-bar progress-bar-striped " role="progressbar" style="width: <%=joueur2.getStats().getSquadKills()/(joueur1.getStats().getSquadKills()+joueur2.getStats().getSquadKills())*100%>%" aria-valuenow="<%=joueur2.getStats().getSquadKills()/(joueur1.getStats().getSquadKills()+joueur2.getStats().getSquadKills())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSquadKills()%></div>
    </div>
</div>
<br>

<button class="accordion"><h2>Wins</h2>
    <br>
    <h3>Totals Wins:</h3>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <%=joueur1.getStats().getTotalWins()/(joueur1.getStats().getTotalWins()+joueur2.getStats().getTotalWins())*100%>%" aria-valuenow="<%=joueur1.getStats().getTotalWins()/(joueur1.getStats().getTotalWins()+joueur2.getStats().getTotalWins())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getTotalWins()%></div>
        <div class="bg-danger progress-bar progress-bar-striped " role="progressbar" style="width: <%=joueur2.getStats().getTotalWins()/(joueur1.getStats().getTotalWins()+joueur2.getStats().getTotalWins())*100%>%" aria-valuenow="<%=joueur2.getStats().getTotalWins()/(joueur1.getStats().getTotalWins()+joueur2.getStats().getTotalWins())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getTotalWins()%></div>
    </div>
</button>

<div class="panel">
    <h3>Solo Wins:</h3>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <%=joueur1.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>%" aria-valuenow="<%=joueur1.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSoloWins()%></div>
        <div class="bg-danger progress-bar progress-bar-striped " role="progressbar" style="width: <%=joueur2.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>%" aria-valuenow="<%=joueur2.getStats().getSoloWins()/(joueur1.getStats().getSoloWins()+joueur2.getStats().getSoloWins())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSoloWins()%></div>
    </div>

    <h3>Duo Wins:</h3>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <%=joueur1.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>%" aria-valuenow="<%=joueur1.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getDuoWins()%></div>
        <div class="bg-danger progress-bar progress-bar-striped " role="progressbar" style="width: <%=joueur2.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>%" aria-valuenow="<%=joueur2.getStats().getDuoWins()/(joueur1.getStats().getDuoWins()+joueur2.getStats().getDuoWins())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getDuoWins()%></div>
    </div>

    <h3>Squad Wins:</h3>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <%=joueur1.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>%" aria-valuenow="<%=joueur1.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur1.getStats().getSquadWins()%></div>
        <div class="bg-danger progress-bar progress-bar-striped " role="progressbar" style="width: <%=joueur2.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>%" aria-valuenow="<%=joueur2.getStats().getSquadWins()/(joueur1.getStats().getSquadWins()+joueur2.getStats().getSquadWins())*100%>" aria-valuemin="0" aria-valuemax="100"><%=joueur2.getStats().getSquadWins()%></div>
    </div>
</div>
<script src="../ressources/js/resultat/acordion.js"></script>
</body>
</html>
