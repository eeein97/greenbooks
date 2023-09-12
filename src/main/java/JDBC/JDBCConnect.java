package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCConnect {

	public Connection con;			//데이터베이스 연결담당
	public Statement stmt;			//인파라미터가 없는정적 쿼리문 실행에 사용
	public PreparedStatement psmt;	//인파라미터가 있는 동적 쿼리문 실행에 사용
	public ResultSet rs;			//select쿼리문의 결과를 저장할 때 사용
	
	//기본생성자
	public JDBCConnect() {
		try {
			//JDBC드라이버 로드
			Class.forName("oracle.jdbc.OracleDriver");
			//DB연결
			String id ="green";
			String pwd ="1234";
			//jdbc:oracle:thin ->오라클 트로토콜
			//호스트명 :포트번호: sid(오라클 인스턴스 식별자)
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB연결 성공(기본생성자)");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	//두번째 생성자 추가
	public JDBCConnect(String driver, String url, String id, String pwd) {
	    System.out.println(driver);  
		try {
	         // jdbc 드리이버 로드하기
	         Class.forName(driver);
	         
	         //db 연결
	         con = DriverManager.getConnection(url, id, pwd);
	         System.out.println("db연결 성공 (두번째 생성자)");
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	   }
	
	public JBDCConect(ServletContext application) {
		String 
	}
		
	//연결 해지(자원 반납)
	public void close() {
		
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(psmt != null) psmt.close();
				if(con != null) con.close();
				System.out.println("JDBC 자원해제");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
}
 