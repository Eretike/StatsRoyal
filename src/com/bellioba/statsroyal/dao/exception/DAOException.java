package com.bellioba.statsroyal.dao.exception;

public class DAOException extends RuntimeException {

    /**
     *
     */
    private static final long serialVersionUID = 5706370488768320962L;

    public DAOException( String message ) {
        super( message );
    }

    public DAOException( String message, Throwable cause ) {
        super( message, cause );
    }

    public DAOException( Throwable cause ) {
        super( cause );
    }
}