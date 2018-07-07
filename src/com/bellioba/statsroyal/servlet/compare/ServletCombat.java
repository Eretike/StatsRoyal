package com.bellioba.statsroyal.servlet.compare;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.HttpSession;

import com.bellioba.statsroyal.api.ConnexionFactory;
import com.xilixir.fortniteapi.v2.FortniteAPI;


@WebServlet(name = "ServletCombat", urlPatterns = {"/ServletCombat"})
public class ServletCombat extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 215342073429392044L;
	private static final String OUT = "commun/resultat.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        /*Recupère les noms d'utilisateur des joueurs a comparer*/
        String userName1 = request.getParameter("player1");
        String userName2 = request.getParameter("player2");

        session.setAttribute("player1", userName1);
        session.setAttribute("player2", userName2);

        
        FortniteAPI api = ConnexionFactory.getConnexion();
        
        
        System.out.println(api.getStats(api.getUserInfo("Ninja").getId()).getTotalWins());

        response.sendRedirect(OUT);
    }
}


