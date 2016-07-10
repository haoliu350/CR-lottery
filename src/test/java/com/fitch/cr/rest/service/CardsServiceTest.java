package com.fitch.cr.rest.service;

import com.fitch.cr.rest.Application;
import com.fitch.cr.rest.dto.CRCards;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * Created by hliu on 2016/7/9.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebAppConfiguration
public class CardsServiceTest {

    @Autowired
    CardsService cardsService;

    @Test
    public void testRandomCard(){
        //CRCards c = (CRCards) cardsService.generateOneRandomCard();
        //System.out.println(c.getCrCardList().get(0));
        System.out.println(cardsService.generateOneRandomCard());
    }


}
