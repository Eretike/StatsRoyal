package com.bellioba.statsroyal.api;

import java.io.IOException;
import java.util.ResourceBundle;

import com.bellioba.statsroyal.api._interface.RecuperationDonnees;
import com.bellioba.statsroyal.api.implementation.RecuperationDonneesImpl;
import com.xilixir.fortniteapi.v2.Credentials;
import com.xilixir.fortniteapi.v2.FortniteAPI;


/**
 *
 */
public class ConnexionFactory {
	
	private static ResourceBundle LOGIN_FORTNITE;
	private FortniteAPI fortniteAPIConnexion;

	public ConnexionFactory(FortniteAPI fortniteAPIConnexion){
		this.fortniteAPIConnexion = fortniteAPIConnexion;
	}
	
	public static ConnexionFactory getInstance() {

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
        return new ConnexionFactory(api);
	}

	public FortniteAPI getConnexion(){
		return this.fortniteAPIConnexion;
	}

	public RecuperationDonnees getRecuperationDonnees(){
		return new RecuperationDonneesImpl(this);
	}
}
