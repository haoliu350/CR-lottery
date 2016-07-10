package com.fitch.cr.rest.controller;

import com.fitch.cr.rest.dto.ApiResponse;
import com.fitch.cr.rest.dto.CRCard;
import com.fitch.cr.rest.service.CardsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

/**
 * Created by hliu on 2016/7/5.
 */
@RestController
public class CRCardController implements IndexController {

    @Autowired
    CardsService cardsService;

    @RequestMapping(value = "/insertCard", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public ApiResponse testException(@RequestParam(value = "name", required = false) String name,
                                     @RequestParam(value = "cost", required = false) int cost,
                                     @RequestParam(value = "rarity", required = false) String rarity,
                                     @RequestParam(value = "type", required = false) String type) {

        return cardsService.insertCard(new CRCard(name, cost, rarity, type));

    }

    @RequestMapping(value = "/getCard", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public ApiResponse getAllCards() {
        return cardsService.getAllCards();

    }

    @RequestMapping(value = "/getCard/{id}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public ApiResponse getAllCardById(@PathVariable int id) {
        return cardsService.getCardById(id);

    }

    @RequestMapping(value = "/deleteCard/{id}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public String deleteCardById(@PathVariable String id){
        boolean deleteSuccess = cardsService.deleteCardById(id);
        if(deleteSuccess){
            return "Delete completed.";
        }else {
            return "Deletion could not be completed.";
        }
    }

    @RequestMapping(value = "/random", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public ApiResponse getOneRandomCard() {
        return cardsService.generateOneRandomCard();
    }
}
