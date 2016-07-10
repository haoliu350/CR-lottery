package com.fitch.cr.rest.service;

import com.fitch.cr.rest.dto.ApiResponse;
import com.fitch.cr.rest.dto.CRCard;

/**
 * Created by hliu on 2016/7/6.
 */
public interface CardsService {
    public ApiResponse getAllCards();
    public ApiResponse getCardById(int id);
    public ApiResponse getCardByName(String name);
    public boolean deleteCardById(String id);
    public ApiResponse insertCard(CRCard c);
    public ApiResponse generateOneRandomCard();
}
