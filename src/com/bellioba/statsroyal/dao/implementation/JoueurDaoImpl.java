package com.bellioba.statsroyal.dao.implementation;

import com.bellioba.statsroyal.dao.DAOFactory;
import com.bellioba.statsroyal.dao._interface.JoueurDao;
import com.bellioba.statsroyal.dao.bean.Joueur;
import com.bellioba.statsroyal.dao.exception.DAOException;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static com.bellioba.statsroyal.dao.DAOUtilitaire.fermeturesSilencieuses;
import static com.bellioba.statsroyal.dao.DAOUtilitaire.initialisationRequetePreparee;


public class JoueurDaoImpl implements JoueurDao {
    private DAOFactory daoFactory;

    public JoueurDaoImpl(DAOFactory daoFactory){
        this.daoFactory = daoFactory;
    }

    private static final String SQL_SELECT_PAR_IDEPIC = "SELECT idEpic, nom, plateforme WHERE idEpic = ?";

    @Override
    public Joueur trouver(String idEpic) throws SQLException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Joueur joueur = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee( connexion, SQL_SELECT_PAR_IDEPIC, false, idEpic);
            resultSet = preparedStatement.executeQuery();
            if ( resultSet.next() ) {
                joueur = map( resultSet );
            }
        } finally {
            fermeturesSilencieuses( resultSet, preparedStatement, connexion );
        }
        return joueur;
    }

    private static final String SQL_INSERT_JOUEUR = "INSERT INTO joueur (idEpic, nom, plateforme) VALUES (?, ?, ?)";

    @Override
    public void creer( Joueur joueur ) throws SQLException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet valeursAutoGenerees = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee( connexion, SQL_INSERT_JOUEUR, true, joueur.getIdEpic(), joueur.getNom(), joueur.getPlateforme());
            int statut = preparedStatement.executeUpdate();
            if ( statut == 0 ) {
                throw new DAOException( "Échec de la création du cour, aucune ligne ajoutée dans la table." );
            }

            valeursAutoGenerees = preparedStatement.getGeneratedKeys();
            if ( !valeursAutoGenerees.next() ) {
                throw new DAOException( "Échec de la création du cour en base, aucun ID auto-généré retourné." );
            }

        } finally {
            fermeturesSilencieuses( valeursAutoGenerees, preparedStatement, connexion );
        }
    }

    private static final String SQL_UPDATE_JOUEUR = "UPDATE joueur SET idEpic = ?, nom = ?, plateforme = ? WHERE idEpic = ?";

    @Override
    public void modifier( Joueur joueur ) throws SQLException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet valeursAutoGenerees = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee( connexion, SQL_UPDATE_JOUEUR, true, joueur.getIdEpic(), joueur.getNom(), joueur.getPlateforme(), joueur.getIdEpic() );
            int statut = preparedStatement.executeUpdate();
            if ( statut == 0 ) {
                throw new DAOException( "Échec de la mise a jour du cours, aucune ligne mise a jour dans la table." );
            }
        } finally {
            fermeturesSilencieuses( valeursAutoGenerees, preparedStatement, connexion );
        }
    }

    private static final String SQL_DELETE_JOUEUR = "DELETE FROM joueur WHERE idEpic = ?";

    @Override
    public void supprimer( Joueur joueur ) throws SQLException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee( connexion, SQL_DELETE_JOUEUR, true, joueur.getIdEpic());
            resultSet = preparedStatement.executeQuery();
        } finally {
            fermeturesSilencieuses( resultSet, preparedStatement, connexion );
        }
    }

    private static Joueur map(ResultSet resultSet) throws SQLException{
        return new Joueur(resultSet.getString("idEpic"), resultSet.getString("nom"), resultSet.getString("plateforme"));
    }
}
