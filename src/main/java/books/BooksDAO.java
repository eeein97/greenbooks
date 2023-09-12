package books;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import JDBC.JDBCConnect;

public class BooksDAO  extends JDBCConnect{

	public BooksDAO (String url, String id, String pw) {	
	   super();
	   }
	//게시글 목록 가져오기
	public List<BooksDTO> selectList() {
		List<BooksDTO> booklist = new ArrayList<>();
		String query = " select * from books";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				BooksDTO dto = new BooksDTO();
				dto.setTitle("title");
				dto.setWriter("writer");
				dto.setPublisher("publisher");
				dto.setPrice("price");
				dto.setPubldate("publdate");
				booklist.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return booklist;
		}
	
	//게시글 데이터를 받아 DB에 추가
	public int insertBook(BooksDTO dto) {
		int result = 0;
		String query = " insert into book(id, writer, title, publisher, price, publdate " + valuse
	}
	}
	

