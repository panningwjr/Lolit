package actionListener;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import vo.TeamAction;

import dao.utils.DAOFactory;
import dao.interfaces.TeamActionDAO;

public class TeamActionDataFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		// ��cookie�л�ȡ������Ϊ���ݣ�������������ݿ�
		System.out.println("---------");
		int registCount = 0;
		TeamAction tAction = new TeamAction();
		String ip = tAction.getIp();
		TeamActionDAO teamActionDAO = null;
		try {
			teamActionDAO = DAOFactory.getTeamActionDAOInstance();
			//�ж���Go���滹��ע��ɹ�����ץ��������Ϣ
			if(registCount == 0){
				//�ж��û��Ƿ��ǵ�һ�η��ʱ���վ
				if (teamActionDAO.doSelectTeamActionIp(ip)) {
					if (teamActionDAO.doInsertTeamAction(tAction)) {
						System.out.println("�û���һ�β�������¼��ɹ���");
					}
				}else{
					if(teamActionDAO.doInsertTeamActionAgain(tAction)){
						System.out.println("�û��ٴβ�����Ϣ¼��ɹ���");
					}
				}
			}else{
				if(teamActionDAO.doUpdateRegistSuccess(ip)){
					System.out.println("�û�ע��������³ɹ���");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		filterChain.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
