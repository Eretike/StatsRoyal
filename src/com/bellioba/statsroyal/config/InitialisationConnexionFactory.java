package com.bellioba.statsroyal.config;

import com.bellioba.statsroyal.api.ConnexionFactory;
import com.bellioba.statsroyal.dao.DAOFactory;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class InitialisationConnexionFactory implements ServletContextListener {

    private ConnexionFactory connexionFactory;
    private DAOFactory daoFactory;

    private static final String ATT_DAO_FACTORY = "daofactory";

    @Override
    public void contextInitialized(ServletContextEvent event){
        ServletContext servletContext = event.getServletContext();
        this.connexionFactory = ConnexionFactory.getInstance();
        ((ServletContext) servletContext).setAttribute("connexionFactory", connexionFactory);
        /* Instanciation de notre DAOFactory */
        this.daoFactory = DAOFactory.getInstance(false);
        /* Enregistrement dans un attribut ayant pour portée toute l'application */
        servletContext.setAttribute( ATT_DAO_FACTORY, this.daoFactory );
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        DAOFactory dao = ((DAOFactory) sce.getServletContext().getAttribute( ATT_DAO_FACTORY ) );
        dao.shutdownConnection();
    }
}
