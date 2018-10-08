package com.bellioba.statsroyal.dao._interface;

import com.bellioba.statsroyal.dao.bean.Joueur;

import java.sql.SQLException;

/**
 * JoueurDAO définit les méthodes implémenté dans JoueurDaoImpl
 */

public class JoueurDao {

    /**
     * Créer un joueur sur la base de données
     * @param joueur contient les informations du joueurs a créer
     * @throws SQLException
     */
    void creer(Joueur joueur) throws SQLException;

    /**
     * Modifie un joueur présent sur la base de données, un joueur est identifier par son idEpic
     * @param joueur nouvelle version du joueurs
     * @throws SQLException
     */
    void modifier(Joueur joueur) throws SQLException;

    /**
     * Supprime un joueur de la base de données
     * @param joueur a supprimer de la base de données
     * @throws SQLException
     */
    void supprimer(Joueur joueur) throws SQLException;

    /**
     * Cherche un joueur dans la base de données celon son idEpic
     * @param idEpic du joueur rechercher
     * @return le joueur trouvé
     * @throws SQLException
     */
    Joueur trouver(String idEpic) throws  SQLException;
}
