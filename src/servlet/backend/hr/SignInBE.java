package servlet.backend.hr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.interfaces.MemberDAO;
import dao.utils.DAOFactory;

import vo.Member;

public class SignInBE extends HttpServlet {

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

		MemberDAO mDAO = null;
		String url = request.getContextPath() + "/Back_End/back_end_prompt.jsp";
		try {
			String mAcName = request.getParameter("mAcName");
			String mPwd = request.getParameter("mPwd");

			Member member = new Member();
			member.setmAcName(mAcName);
			member.setmPwd(mPwd);

			mDAO = DAOFactory.getMemberDAOInstance();

			if (mDAO.doSelectForSignIn(member)) {
				url = request.getContextPath() + "/committee/ShowTeamListS1";
			} else {
				url = url + "?e=101";// 后台登陆密码不正确
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				mDAO.closeDBC3();
			} catch (Exception e) {
				e.printStackTrace();
			}
			response.sendRedirect(url);
			//request.getRequestDispatcher(url).forward(request, response);
		}
	}

}
