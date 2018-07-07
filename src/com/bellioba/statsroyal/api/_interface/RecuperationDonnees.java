package com.bellioba.statsroyal.api._interface;

import com.bellioba.statsroyal.api.bean.Joueur;


/**
 * @author BELLION BASTIEN
 * Interface de la récupération des données depuis l'api de fortnite
 */
public interface RecuperationDonnees {
	Joueur getInfosJoueur(String pseudo, String plateforme);
}
