package com.bellioba.statsroyal.dao.bean;

import com.xilixir.fortniteapi.v2.Stats;

import java.sql.Date;

public class Snapshot {

    int idSnapshot;
    String idEpic;
    Stats stats;
    Date date;

    public Snapshot(int idSnapshot, String idEpic, Date date, Stats stats) {
        this.idSnapshot = idSnapshot;
        this.idEpic = idEpic;
        this.stats = stats;
        this.date = date;
    }

    public int getIdSnapshot() {
        return idSnapshot;
    }

    public void setIdSnapshot(int idSnapshot) {
        this.idSnapshot = idSnapshot;
    }

    public String getIdEpic() {
        return idEpic;
    }

    public void setIdEpic(String idEpic) {
        this.idEpic = idEpic;
    }

    public Stats getStats() {
        return stats;
    }

    public void setStats(Stats stats) {
        this.stats = stats;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
