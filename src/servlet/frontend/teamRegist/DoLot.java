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

public class DoLot extends HttpServlet {

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

		String path = "/Front_End/front_end_prompt.jsp";
		
		TeamDAO tDAO = null;

		try {

			Long tId = Long.parseLong(request.getParameter("tId"));
			String tPwd = request.getParameter("tPwd");

			tDAO = DAOFactory.getTeamDAOInstance();
			ArrayList<Team> tList = new ArrayList<Team>();

			if (tDAO.doSelectForSignIn(tId, tPwd)) {
				// 队伍身份验证成功
				if (tDAO.doSelectForIfLotted(tId)) {
					// 验证是否已抽签
					if (tDAO.doInsertOrder(tId)) {
						// 抽签成功，取得所有队伍抽签顺位
						tList = (ArrayList<Team>) tDAO.doSelectForMatchList();
						request.setAttribute("tList", tList);
						path = "/Front_End/Team_Apply/match_list.jsp";
					} else {
						path = path + "?e=801";
						System.out.println(801);
					}
				} else {
					path = path + "?e=802";
					System.out.println(802);
				}
			} else {
				path = path + "?e=800";
				System.out.println(800);
			}
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
			// 404
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
