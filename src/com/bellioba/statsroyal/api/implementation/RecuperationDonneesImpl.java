package com.bellioba.statsroyal.api.implementation;

import com.bellioba.statsroyal.api.ConnexionFactory;
import com.bellioba.statsroyal.api._interface.RecuperationDonnees;
import com.bellioba.statsroyal.api.bean.Joueur;
import com.xilixir.fortniteapi.v2.FortniteAPI;

import java.io.IOException;

public class RecuperationDonneesImpl implements RecuperationDonnees {
    private ConnexionFactory connexionFactory;

    public RecuperationDonneesImpl(ConnexionFactory connexionFactory){
        this.connexionFactory = connexionFactory;
    }

    public Joueur getJoueur(String pseudo, String plateforme) throws IOException{
        Joueur joueur = new Joueur(pseudo, plateforme);
        FortniteAPI connexion = connexionFactory.getConnexion();

        joueur.setId(connexion.getUserInfo(pseudo).getId());
        joueur.setStats(connexion.getStats(joueur.getId()));

        return joueur;
    }
}
