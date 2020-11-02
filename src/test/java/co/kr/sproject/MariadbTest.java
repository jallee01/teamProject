package co.kr.sproject;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MariadbTest {
	
	@Test
	public void test() throws Exception {
		Class.forName("org.mariadb.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/storyproject","pAdmin","pAdmin");
		System.out.println(con);
	}

}
