package servlet.frontend.teamRegist;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Team;
import dao.interfaces.TeamDAO;
import dao.utils.DAOFactory;

public class ShowLastTeam extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
		String url = "/Front_End/front_end_prompt.jsp";

		try {

			tDAO = DAOFactory.getTeamDAOInstance();
			tList = (ArrayList<Team>) tDAO.doSelectForTeamList(1);

			// 获取 10个队伍
			int count = 10;
			if (tList.size() < 10) {
				count = tList.size();
			}
			for (int i = 0; i < count; i++) {
				Team team = tList.get(i);
				Long tId = team.gettId();
				String tIdStr = String.valueOf(tId);
				// 获取tId的前8位日期信息
				tIdStr = tIdStr.substring(0, 8);
				tId = Long.parseLong(tIdStr);
				team.settId(tId);
				tList.set(i, team);
			}

			request.setAttribute("tList", tList);
			url = "/Welcome.jsp";
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
