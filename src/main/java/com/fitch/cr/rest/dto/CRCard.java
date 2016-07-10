package com.fitch.cr.rest.dto;

/**
 * Created by hliu on 2016/7/5.
 */
public class CRCard implements ApiResponse{

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
}
