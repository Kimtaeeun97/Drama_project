package service;

import dto.InfoDTO;
import dto.MembersDTO;

import static db.jdbcUtil.*;

import java.sql.Connection;

import dao.TicketCheckDAO;
public class TicketCheckService {

	public InfoDTO selectCheck(String idcode) {
		TicketCheckDAO dao=TicketCheckDAO.getInstance();
		Connection con=getConnection();
		dao.setConnection(con);
		InfoDTO dto=new InfoDTO();
		dto=dao.selectCheck(idcode);//이름,생년월일 받아옴
		System.out.println("sel1");
		close(con);
		return dto;
	}

	public InfoDTO selectCheckDrama(String dcode) {
		TicketCheckDAO dao=TicketCheckDAO.getInstance();
		Connection con=getConnection();
		dao.setConnection(con);
		InfoDTO dto=new InfoDTO();
		dto=dao.selectCheckDrama(dcode);
		System.out.println("sel2");
		close(con);
		return dto;
	}

	public int InsertCheckTicket(int Checktnum,String checktmcode, String checktdcode) {
		TicketCheckDAO dao=TicketCheckDAO.getInstance();
		Connection con=getConnection();
		dao.setConnection(con);
		int TnumCode=dao.TnumSelect();
		int result=dao.InsertCheck(Checktnum,checktmcode,checktdcode,TnumCode);
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return result;
	}

//	public InfoDTO updateChecktnum(String dcode) {
//		TicketCheckDAO dao=TicketCheckDAO.getInstance();
//		Connection con=getConnection();
//		dao.setConnection(con);
//		InfoDTO dto=new InfoDTO();
//	dto=dao.UpdateCheckprice(dcode);
//	return dto;
//	}
	//혹시모르니깐 나둠

}
