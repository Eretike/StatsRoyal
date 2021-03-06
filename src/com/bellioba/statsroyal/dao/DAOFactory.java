package com.bellioba.statsroyal.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

import com.bellioba.statsroyal.dao._interface.JoueurDao;
import com.bellioba.statsroyal.dao.bean.Joueur;
import com.bellioba.statsroyal.dao.exception.DAOConfigurationException;
import com.bellioba.statsroyal.dao.implementation.JoueurDaoImpl;
import org.apache.log4j.BasicConfigurator;

import com.jolbox.bonecp.BoneCP;
import com.jolbox.bonecp.BoneCPConfig;


public class DAOFactory {


    private static final String FICHIER_PROPERTIES       = "databaseLogin";
    private static final String PROPERTY_URL             = "url";
    private static final String PROPERTY_URL_TEST        = "urlTest";
    private static final String PROPERTY_DRIVER          = "driver";
    private static final String PROPERTY_NOM_UTILISATEUR = "nomutilisateur";
    private static final String PROPERTY_MOT_DE_PASSE    = "motdepasse";
    private static ResourceBundle LOGIN_DAO;

    /* package */
    BoneCP connectionPool = null;

    /* package */
    DAOFactory( BoneCP connectionPool ) {
        this.connectionPool = connectionPool;
    }


    /*
     * Méthode chargée de récupérer les informations de connexion à la base de
     * données, charger le driver JDBC et retourner une instance de la Factory
     */
    public static DAOFactory getInstance(boolean test) throws DAOConfigurationException {
        String url;
        String driver;
        String nomUtilisateur;
        String motDePasse;
        BoneCP connectionPool = null;
        BasicConfigurator.configure();
        try {
            LOGIN_DAO = ResourceBundle.getBundle(FICHIER_PROPERTIES);

            if(test) {
                url = LOGIN_DAO.getString(PROPERTY_URL_TEST).trim();

            }else {
                url = LOGIN_DAO.getString(PROPERTY_URL).trim();
            }

            driver = LOGIN_DAO.getString(PROPERTY_DRIVER).trim();
            nomUtilisateur = LOGIN_DAO.getString(PROPERTY_NOM_UTILISATEUR).trim();
            motDePasse = LOGIN_DAO.getString(PROPERTY_MOT_DE_PASSE).trim();
        } catch ( MissingResourceException e ) {
            throw new DAOConfigurationException( "Impossible de charger le fichier properties ", e );
        }

        try {
            Class.forName( driver );
        } catch ( ClassNotFoundException e ) {
            throw new DAOConfigurationException( "Le driver est introuvable dans le classpath.", e );
        }
        try {
            /*
             * Cr�ation d'une configuration de pool de connexions via l'objet
             * BoneCPConfig et les diff�rents setters associ�s.
             */
            BoneCPConfig config = new BoneCPConfig();
            /* Mise en place de l'URL, du nom et du mot de passe */
            config.setJdbcUrl( url );
            config.setUsername( nomUtilisateur );
            config.setPassword( motDePasse );
            /* Param�trage de la taille du pool */
            config.setMinConnectionsPerPartition( 5 );
            config.setMaxConnectionsPerPartition( 10 );
            config.setPartitionCount( 2 );
            /* Cr�ation du pool � partir de la configuration, via l'objet BoneCP */
            connectionPool = new BoneCP( config );
        } catch ( SQLException e ) {
            throw new DAOConfigurationException( "Erreur de configuration du pool de connexions.", e );
        }
        /*
         * Enregistrement du pool cr�� dans une variable d'instance via un appel
         * au constructeur de DAOFactory
         */
        DAOFactory instance = new DAOFactory( connectionPool );
        return instance;
    }

    /* Méthode chargée de fournir une connexion à la base de données */
    /* package */

    public Connection getConnection() throws SQLException {
        return connectionPool.getConnection();
    }

    public void shutdownConnection() {
        connectionPool.shutdown();
    }

    public JoueurDao getJoueurDao() {
        return new JoueurDaoImpl( this );
    }

}
