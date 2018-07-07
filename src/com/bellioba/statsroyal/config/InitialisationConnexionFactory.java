package com.bellioba.statsroyal.config;

import com.bellioba.statsroyal.api.ConnexionFactory;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class InitialisationConnexionFactory implements ServletContextListener {
    private ConnexionFactory connexionFactory;

    @Override
    public void contextInitialized(ServletContextEvent event){
        ServletContext servletContext = event.getServletContext();
        this.connexionFactory = ConnexionFactory.getInstance();
        ((ServletContext) servletContext).setAttribute("connexionFactory", connexionFactory);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

        System.out.println("bye bye");
    }
}
