package com.bellioba.statsroyal.api.bean;

import com.xilixir.fortniteapi.v2.Stats;

public class Joueur {

    private String nom = "";
	private String id = "";
	private String plateforme = "";
	private Stats stats;

	public Joueur(String nom, String id, String plateforme){
		this.nom = nom;
		this.id = id;
		this.plateforme = plateforme;
	}

	public Joueur(String nom, String plateforme){
		this(nom, "", plateforme);
	}

	public  Joueur(){
		this("", "", "");
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPlateforme() {
		return plateforme;
	}

	public void setPlateforme(String plateforme) {
		this.plateforme = plateforme;
	}

	public Stats getStats() {
		return stats;
	}

	public void setStats(Stats stats) {
		this.stats = stats;
	}
}
