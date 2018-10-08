package com.bellioba.statsroyal.dao.exception;

public class DAOConfigurationException extends RuntimeException {

    /**
     *
     */
    private static final long serialVersionUID = 4131182571808838635L;

    public DAOConfigurationException( String message ) {
        super( message );
    }

    public DAOConfigurationException( String message, Throwable cause ) {
        super( message, cause );
    }

    public DAOConfigurationException( Throwable cause ) {
        super( cause );
    }
}