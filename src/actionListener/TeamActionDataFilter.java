package actionListener;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import vo.TeamAction;

import dao.utils.DAOFactory;
import dao.interfaces.TeamActionDAO;

public class TeamActionDataFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		// 从cookie中获取队伍行为数据，分析后存入数据库

		Cookie[] cookies = (Cookie[]) ((HttpServletRequest) request)
				.getCookies();
		if (cookies == null) {
			filterChain.doFilter(request, response);
		} else {
			TeamAction tAction = new TeamAction();
			tAction.setIp(cookies[0].getValue());
			tAction.setBrowser(cookies[2].getValue());
			tAction.setTime(cookies[3].getValue());
			int registCount = Integer.parseInt(cookies[4].getValue());

			String ip = tAction.getIp();
			TeamActionDAO teamActionDAO = null;
			try {
				teamActionDAO = DAOFactory.getTeamActionDAOInstance();
				// 判断是Go界面还是注册成功界面抓过来的信息
				if (registCount == 0) {
					// 判断用户是否是第一次访问本网站
					if (teamActionDAO.doSelectTeamActionIp(ip)) {
						if (teamActionDAO.doUpdateTeamActionAgain(tAction)) {
							System.out.println("用户再次操作信息录入成功！");
						}
					} else {
						if (teamActionDAO.doInsertTeamAction(tAction)) {
							System.out.println("用户第一次操作数据录入成功！");
						}
					}
				} else {
					if (teamActionDAO.doUpdateRegistSuccess(ip)) {
						System.out.println("用户注册次数更新成功！");
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			filterChain.doFilter(request, response);
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
