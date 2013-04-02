package servlet.backend.committee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.interfaces.TeamDAO;
import dao.utils.DAOFactory;

public class ShowTeamDataCount extends HttpServlet {

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

		TeamDAO tDao = null;
		String url = "";
		List<Integer> serverCount = new ArrayList<Integer>();
		List<Integer> winCount = new ArrayList<Integer>();
		List<Integer> instituteCount = new ArrayList<Integer>();
		List<Integer> areaCount = new ArrayList<Integer>();
		try {
			tDao = DAOFactory.getTeamDAOInstance();
			serverCount =  tDao.doSelectForServerCount();
			winCount = tDao.doSelectForWinCount();
			instituteCount = tDao.doSelectForInstituteCount();
			areaCount = tDao.getBelongAreaCount(instituteCount);
			
			HttpSession session = request.getSession();
			session.setAttribute("serverCount", serverCount);
			session.setAttribute("winCount", winCount);
			session.setAttribute("instituteCount", instituteCount);
			session.setAttribute("areaCount", areaCount);
			
			url = "";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
