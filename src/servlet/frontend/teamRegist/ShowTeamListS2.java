package servlet.frontend.teamRegist;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.interfaces.TeamDAO;
import dao.utils.DAOFactory;

import vo.Team;

public class ShowTeamListS2 extends HttpServlet {

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
		String path = "/Front_End/front_end_prompt.jsp";

		try {

			tDAO = DAOFactory.getTeamDAOInstance();
			tList = (ArrayList<Team>) tDAO.doSelectForTeamList(2);
			
			request.setAttribute("tList", tList);
			path = "/Front_End/Team_Apply/team_sortition.jsp";
			System.out.println(tList.size());

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				tDAO.closeDBC3();
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher(path).forward(request, response);
		}
	}
}
