package com.bellioba.statsroyal.servlet.compare;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.HttpSession;

import com.bellioba.statsroyal.api.ConnexionFactory;
import com.bellioba.statsroyal.api._interface.RecuperationDonnees;
import com.bellioba.statsroyal.api.bean.Joueur;

@WebServlet(name = "ServletCombat", urlPatterns = {"/ServletCombat"})
public class ServletCombat extends HttpServlet {


	private static final long serialVersionUID = 215342073429392044L;
	private static final String OUT = "commun/resultat.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        RecuperationDonnees recuperationDonnees = ( (ConnexionFactory) getServletContext().getAttribute( "connexionFactory" ) ).getRecuperationDonnees();

        /*Recup�re les noms d'utilisateur des joueurs a comparer*/
        String nomUtilisateur1 = request.getParameter("player1");
        String nomUtilisateur2 = request.getParameter("player2");

        Joueur joueur1 = recuperationDonnees.getJoueur(nomUtilisateur1, "pc");
        Joueur joueur2 = recuperationDonnees.getJoueur(nomUtilisateur2, "pc");

        session.setAttribute("joueur1", joueur1);
        session.setAttribute("joueur2", joueur2);

        response.sendRedirect(OUT);
    }
}


