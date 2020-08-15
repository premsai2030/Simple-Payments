package home;




import javax.sql.DataSource;

import com.zaxxer.hikari.HikariDataSource;

public class connection_pool {

private static HikariDataSource hikariDataSource;
static {
	try {
		//Properties properties=new Properties(); 
		//properties.load(new FileInputStream("database.properties"));
		hikariDataSource=new HikariDataSource();
		hikariDataSource.setDriverClassName("com.mysql.jdbc.Driver");
		hikariDataSource.setJdbcUrl("jdbc:mysql://localhost:3306/virtusa?useSSL=false");
		hikariDataSource.setUsername("root");
		hikariDataSource.setPassword("premsai2030");
		hikariDataSource.setMinimumIdle(100);
		hikariDataSource.setMaximumPoolSize(2000);
		hikariDataSource.setAutoCommit(false);
		hikariDataSource.setLoginTimeout(3);
	} catch (Exception e) {
		e.printStackTrace();
	}
}
public static DataSource dataSource(){
	return hikariDataSource;
} 	
	
	
	
	
}
