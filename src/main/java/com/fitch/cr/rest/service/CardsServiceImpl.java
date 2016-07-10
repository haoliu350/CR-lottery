package com.fitch.cr.rest.service;

import com.fitch.cr.rest.dao.CardsOracleDao;
import com.fitch.cr.rest.dto.ApiResponse;
import com.fitch.cr.rest.dto.CRCard;
import com.fitch.cr.rest.dto.CRCards;
import com.fitch.cr.rest.exception.IdNotFoundCustomException;
import com.fitch.cr.rest.exception.InsertFailedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

/**
 * Created by hliu on 2016/7/6.
 */

@Service
public class CardsServiceImpl implements CardsService {

    @Autowired
    CardsOracleDao cardsOracleDao;

    @Override
    public ApiResponse getAllCards() {
        return cardsOracleDao.getAllCards();
    }

    @Override
    public ApiResponse getCardById(int id) {
        return cardsOracleDao.getCardById(id);
    }

    @Override
    public ApiResponse getCardByName(String name) {
        return cardsOracleDao.getCardByName(name);
    }

    @Override
    public boolean deleteCardById(String id) {
        if(null == id || id.equalsIgnoreCase("") || id.equals(null)) {
            throw new IdNotFoundCustomException("Delete Card: Id not found Exception");
        } else{
            return cardsOracleDao.deleteCardById(Integer.valueOf(id));
        }

    }

    @Override
    public ApiResponse insertCard(CRCard c) {
        boolean insertSuccess =  cardsOracleDao.insertCard(c.getName(),c.getCost(),c.getRarity(), c.getType());
        if(insertSuccess){
            CRCards cardsList = (CRCards) cardsOracleDao.getCardByName(c.getName());
            return cardsList.getCrCardList().get(0);
        } else{
            throw new InsertFailedException("ServiceImpl: Insert failed.");
        }
    }

    @Override
    public ApiResponse generateOneRandomCard() {
        List<Integer> cardIds = cardsOracleDao.getIds();
        int index =  new Random().nextInt(cardIds.size());
        CRCards cardsList = (CRCards) cardsOracleDao.getCardById(cardIds.get(index));
        return cardsList.getCrCardList().get(0);
    }
}
