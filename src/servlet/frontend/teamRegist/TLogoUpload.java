package servlet.frontend.teamRegist;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileUploadException;

import dao.utils.LogoUpload;

public class TLogoUpload extends HttpServlet {

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

		ServletContext context = getServletContext();
		String filepath = context.getRealPath("images") + "\\tLogo\\";
		String url = "/Front_End/front_end_prompt.jsp";
		//TeamDAO tDAO = null;

		try {

			LogoUpload tlogo = new LogoUpload();
			//tDAO = DAOFactory.getTeamDAOInstance();

			if (tlogo.update(request, context, filepath)) {
				// tDAO.
				url = "/Front_End/Team_Apply/team_regist_success.jsp";
			} else {
				url = url + "?e=920";
			}

		} catch (FileUploadException e) {
			e.printStackTrace();
			url = url + "?e=921";
		} catch (Exception e) {
			e.printStackTrace();
			url = url + "?e=920";
		} finally {
			request.getRequestDispatcher(url).forward(request, response);
		}

	}
}
