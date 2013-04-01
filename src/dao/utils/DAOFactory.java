package dao.utils;

import dao.impl.MemberImpl;
import dao.impl.TeamImpl;
import dao.interfaces.MemberDAO;
import dao.interfaces.TeamDAO;

public class DAOFactory {

	public static TeamDAO getTeamDAOInstance() throws Exception{
		return new TeamImpl();
	}
	
	public static MemberDAO getMemberDAOInstance() throws Exception{
		return new MemberImpl();
	}
}
