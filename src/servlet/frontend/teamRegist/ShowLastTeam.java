package servlet.frontend.teamRegist;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Team;
import dao.interfaces.TeamDAO;
import dao.utils.DAOFactory;

public class ShowLastTeam extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		ArrayList<Team> tList = new ArrayList<Team>();
		TeamDAO tDAO = null;
		String url = "/Back_End/back_end_prompt.jsp";
		String tidstr;
		Team team;
		long tid;
        int i =0;
		try {

			tDAO = DAOFactory.getTeamDAOInstance();
			tList = (ArrayList<Team>) tDAO.doSelectForTeamList(1);
			for (;i<10;i++)
			{
            team = tList.get(i);
            tid = team.gettId();
            tidstr = String.valueOf(tid);
            tidstr = tidstr.substring(0, 7);
            tid = Long.parseLong(tidstr);
            team.settId(tid);
            tList.set(i, team);
			}
			
			request.setAttribute("tList", tList);
			url = "/Back_End/Committee/committee_apply_info.jsp";
			System.out.println("teamList size:" + tList.size());

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				tDAO.closeDBC3();
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher(url).forward(request, response);
		}
	}

}
