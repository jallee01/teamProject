package co.kr.sproject;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MySQLConnectionTest {
	
	private static final String DRIVER = "org.mariadb.jdbc.Driver";
	private static final String URL = "jdbc:mariadb://127.0.0.1:3306/storyproject";
	private static final String USER = "pAdmin";
	private static final String PW = "pAdmin";
	
	@Test
	public void testConnection() throws Exception{
		Class.forName(DRIVER);
		
		try(Connection con = DriverManager.getConnection(URL,USER,PW)){
			System.out.println("\n >>>>>>>>> Connection 출력 : " + con + "\n");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
