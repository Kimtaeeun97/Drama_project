package service;

import java.sql.Connection;
import static db.jdbcUtil.*;
import dao.MemberDAO;

public class MemberLoginService {

	public String checkLogin(String id, String pw) {
		MemberDAO dao = MemberDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		String idCheck = dao.MemLogin(id,pw);
		close(con);
		return idCheck;
	}

}
