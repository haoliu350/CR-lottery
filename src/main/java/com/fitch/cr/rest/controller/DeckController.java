package com.fitch.cr.rest.controller;

import com.fitch.cr.rest.dto.Deck;
import com.fitch.cr.rest.service.CardsService;
import com.fitch.cr.rest.service.DeckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by hliu on 2016/7/18.
 */
@RestController
public class DeckController implements IndexController{

    @Autowired
    CardsService cardsService;
    @Autowired
    DeckService deckService;

    @RequestMapping(value = "/randomDeck", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public Deck getRandomDeck(){
        return deckService.getRandomDeck();
    }
}
