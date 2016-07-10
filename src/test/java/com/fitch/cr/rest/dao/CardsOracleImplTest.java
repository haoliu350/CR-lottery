package com.fitch.cr.rest.dao;

import com.fitch.cr.rest.Application;
import com.fitch.cr.rest.dto.CRCard;
import com.fitch.cr.rest.util.OracleConfiguration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebAppConfiguration
public class CardsOracleImplTest {

	@Autowired
	CardsOracleDao cardsOracleDao;

	@Test
	public void testGetAllCards(){
		System.out.println(cardsOracleDao.getAllCards());
	}

    @Test
    public void testInsertCard(){
        cardsOracleDao.insertCard("Spear Goblins", 2, "Common", "Troop");
    }

    @Test
    public void testDeleteCardById(){
        cardsOracleDao.deleteCardById(21);
    }

    @Test
    public void testGetIds(){
        List arr = cardsOracleDao.getIds();
        System.out.println(arr.toString());
    }

}
