package com.bellioba.statsroyal.dao.bean;

public class Joueur {
    String idEpic;
    String nom;
    String plateforme;

    public Joueur(String idEpic, String nom, String plateforme) {
        this.idEpic = idEpic;
        this.nom = nom;
        this.plateforme = plateforme;
    }

    public String getIdEpic() {
        return idEpic;
    }

    public void setIdEpic(String idEpic) {
        this.idEpic = idEpic;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPlateforme() {
        return plateforme;
    }

    public void setPlateforme(String plateforme) {
        this.plateforme = plateforme;
    }
}
