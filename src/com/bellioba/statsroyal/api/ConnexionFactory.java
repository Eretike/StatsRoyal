package com.bellioba.statsroyal.api;

import java.io.IOException;
import java.util.ResourceBundle;

import com.xilixir.fortniteapi.v2.Credentials;
import com.xilixir.fortniteapi.v2.FortniteAPI;



public class ConnexionFactory {
	
	private static ResourceBundle LOGIN_FORTNITE;
	
	public static FortniteAPI getConnexion() {
		
		LOGIN_FORTNITE = ResourceBundle.getBundle("identifiantFortnite");
		
		Credentials credentials = new Credentials(LOGIN_FORTNITE.getString("EMAIL").trim(),
				LOGIN_FORTNITE.getString("PASSWORD").trim(),
				LOGIN_FORTNITE.getString("TOKEN_LAUNCHER").trim(),
				LOGIN_FORTNITE.getString("TOKEN_FORTNITE").trim());
		
        FortniteAPI api = new FortniteAPI(credentials);
        
        try {
            api.authenticate();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return api;
	}
}
