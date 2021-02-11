package service;

import java.sql.Connection;
import java.util.ArrayList;

import dao.TicketListDAO;
import dto.InfoDTO;
import dto.MembersDTO;
import static db.jdbcUtil.*;

public class TicketListService {

	public int insertMemDB(MembersDTO dto) {
		Connection con = getConnection();
		TicketListDAO dao = TicketListDAO.getInstance();
		dao.setConnection(con);
		String mCode = dao.getMCode();
		dto.setMcode(mCode);
		int result = dao.insertMemDB(dto);
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}

	public String checkId(String uId) {
		Connection con = getConnection();
		TicketListDAO dao = TicketListDAO.getInstance();
		dao.setConnection(con);
		String result = dao.checkId(uId);
		String resultMsg = null;
		if(result == null) {
			resultMsg = "OK";
		} else {
			resultMsg = "NO";
		}
		close(con);
		return resultMsg;
	}

	public ArrayList<InfoDTO> getInfo(String userId) {
		Connection con = getConnection();
		TicketListDAO dao = TicketListDAO.getInstance();
		dao.setConnection(con);
		ArrayList<InfoDTO> getTKtable = dao.getInfo(userId);
		close(con);
		return getTKtable;
	}

	public InfoDTO viewInfo(String tcode) {
		Connection con = getConnection();
		TicketListDAO dao = TicketListDAO.getInstance();
		dao.setConnection(con);
		InfoDTO info = dao.viewInfo(tcode);
		close(con);
		return info;
	}

	public int cancelDrama(String tcode) {
		Connection con = getConnection();
		TicketListDAO dao = TicketListDAO.getInstance();
		dao.setConnection(con);
		int result = dao.cancelDrama(tcode);
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}



}
