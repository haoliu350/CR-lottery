package com.fitch.cr.rest.dto;

import java.util.Comparator;

/**
 * Created by hliu on 2016/7/5.
 */
public class CRCard implements ApiResponse, Comparable<CRCard>{

    private int Id;
    private String name;
    private int cost;
    private String rarity;
    private String type;

    public CRCard(){}

    public CRCard(String name, int cost, String rarity, String type){
        this.name = name;
        this.cost = cost;
        this.rarity = rarity;
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getRarity() {
        return rarity;
    }

    public void setRarity(String rarity) {
        this.rarity = rarity;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    @Override
    public String toString() {
        return "CRCard{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", cost=" + cost +
                ", rarity='" + rarity + '\'' +
                ", type='" + type + '\'' +
                '}';
    }

    @Override
    public int compareTo(CRCard o) {
        return this.Id - o.getId();
    }

    public static Comparator<CRCard> CardNameComparator = new Comparator<CRCard>() {
        public int compare(CRCard c1, CRCard c2) {
            String c1Name = c1.getName().toUpperCase();
            String c2Name = c2.getName().toUpperCase();
            //ascending order
            return c1Name.compareTo(c2Name);

            //descending order
            //return c2Name.compareTo(c1Name);
        }
    };

    public static Comparator<CRCard> CardCostComparator = new Comparator<CRCard>() {
        public int compare(CRCard c1, CRCard c2) {
            return c1.getCost() - c2.getCost();
        }
    };

    public static Comparator<CRCard> CardRarityComparator = new Comparator<CRCard>() {
        public int compare(CRCard c1, CRCard c2) {
            String c1Rarity = c1.getRarity().toUpperCase();
            String c2Rarity = c2.getRarity().toUpperCase();
            int result = c1Rarity.compareTo(c2Rarity);
            return result == 0 ? (c1.getCost() - c2.getCost()) : -1;
        }
    };
}
