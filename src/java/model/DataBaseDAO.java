package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseDAO {

    protected Connection conn;

    protected void conectar() throws Exception {	
	Class.forName("com.mysql.jdbc.Driver");
	String user = "root";
	String pass = "";
	String url = "jdbc:mysql://localhost/prova_a1";
	
	conn = DriverManager.getConnection(url, user, pass);
    }

    protected void desconectar() throws Exception {
	if(!conn.isClosed()) {
	    conn.close();
	}	    	
    }
}