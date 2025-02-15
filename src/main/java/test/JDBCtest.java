package test;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;


@Slf4j
public class JDBCtest {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void TestConnection() {
		try (Connection conn = 
            	DriverManager.getConnection(
                    "jdbc:oracle:thin:@192.168.0.159:1521:xe", 
                    "HYH",
                    "1234")) {
			log.info(" "+conn);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
