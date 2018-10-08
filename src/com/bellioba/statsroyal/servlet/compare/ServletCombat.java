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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        RecuperationDonnees recuperationDonnees = ( (ConnexionFactory) getServletContext().getAttribute( "connexionFactory" ) ).getRecuperationDonnees();

        /*Récupère les noms d'utilisateur des joueurs a comparer*/
        String nomUtilisateur1 = request.getParameter("player1");
        String nomUtilisateur2 = request.getParameter("player2");
        String jspOut = "index.jsp";

        try {
            /*Récupère les données lié aux joueurs */
            Joueur joueur1 = recuperationDonnees.getJoueur(nomUtilisateur1, "pc");
            Joueur joueur2 = recuperationDonnees.getJoueur(nomUtilisateur2, "pc");

            /*Passe les informations des joueurs en session*/
            session.setAttribute("joueur1", joueur1);
            session.setAttribute("joueur2", joueur2);

            jspOut = "commun/resultat.jsp";
        }
        catch (IOException e){
            jspOut = "index.jsp";
            session.setAttribute("ErreurMatch", "<center><font color=\"red\"><p>Can't find player</font></p></center>");
        }

        response.sendRedirect(jspOut);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        RecuperationDonnees recuperationDonnees = ( (ConnexionFactory) getServletContext().getAttribute( "connexionFactory" ) ).getRecuperationDonnees();

        /*Récupère les noms d'utilisateur des joueurs a comparer*/
        String nomUtilisateur1 = request.getParameter("player1");
        String nomUtilisateur2 = request.getParameter("player2");
        String jspOut = "index.jsp";

        try {
            /*Récupère les données lié aux joueurs */
            Joueur joueur1 = recuperationDonnees.getJoueur(nomUtilisateur1, "pc");
            Joueur joueur2 = recuperationDonnees.getJoueur(nomUtilisateur2, "pc");

            /*Passe les informations des joueurs en session*/
            session.setAttribute("joueur1", joueur1);
            session.setAttribute("joueur2", joueur2);

            jspOut = "commun/resultat.jsp";
        }
        catch (IOException e){
            jspOut = "index.jsp";
            session.setAttribute("ErreurMatch", "<center><font color=\"red\"><p>Can't find player</font></p></center>");
        }

        response.sendRedirect(jspOut);
    }
}


