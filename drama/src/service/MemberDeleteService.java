package service;

import java.sql.*;
import static db.jdbcUtil.*;
import dao.MembersDAO;

public class MemberDeleteService {

	public int MemberDelete(String id) {
		MembersDAO dao = MembersDAO.getInstance();
		Connection con = getConnection(); 
		dao.setConnection(con);
		
		int result = dao.MemberDelete(id);
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return result;
	}

}
