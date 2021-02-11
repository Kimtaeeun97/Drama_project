package service;

import java.sql.Connection;
import static db.jdbcUtil.*;
import dao.MembersDAO;
import dto.MembersDTO;

public class ModifyService {

	public MembersDTO Modify(String id) {
		MembersDAO dao = MembersDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		MembersDTO dto = dao.Modify(id);
		
		close(con);
		return dto;
	}

	public int ModifyProcess(MembersDTO dto) {
		MembersDAO dao = MembersDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		int result = dao.ModifyUpdate(dto);
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		return result;
	}

}
