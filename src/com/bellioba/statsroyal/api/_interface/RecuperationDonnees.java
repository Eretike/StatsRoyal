package com.bellioba.statsroyal.api._interface;

import com.bellioba.statsroyal.api.bean.Joueur;

import java.io.IOException;


/**
 * @author BELLION BASTIEN
 * Interface de la r�cup�ration des donn�es depuis l'api de fortnite
 */
public interface RecuperationDonnees {
	Joueur getJoueur(String pseudo, String plateforme) throws IOException;
}
