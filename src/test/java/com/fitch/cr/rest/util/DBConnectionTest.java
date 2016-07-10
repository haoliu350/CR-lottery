package com.fitch.cr.rest.util;

import com.fitch.cr.rest.Application;
import com.fitch.cr.rest.controller.HelloController;
import com.fitch.cr.rest.dto.CRCard;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.mock.web.MockServletContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import static org.hamcrest.Matchers.equalTo;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebAppConfiguration
public class DBConnectionTest {

	@Autowired
	OracleConfiguration oracleConfiguration;

	@Test
	public void testDB(){
		try {
			Connection conn = oracleConfiguration.dataSource().getConnection();
			//String sql ="SELECT 1 FROM DUAL";
			String sql ="select * from CLASHROYAL_CARDS";
			Statement stm = conn.createStatement();
			ResultSet resultSet = stm.executeQuery(sql);
			while(resultSet.next()){
				CRCard card = new CRCard();
				card.setId(resultSet.getInt("CARD_ID"));
				card.setName(resultSet.getString("CARD_NAME"));
				card.setCost(resultSet.getInt("CARD_ELIXIR_COST"));
				System.out.println(card);
			}
			stm.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
