package dao.interfaces;

import vo.TeamAction;

public interface TeamActionDAO {

	// �ر����ݿ�����
	public void closeDBC3() throws Exception;

	public void closeDBC2() throws Exception;

	// ��ѯ�û�ip�Ƿ��Ѿ�����
	public boolean doSelectTeamActionIp(String ip) throws Exception;

	// �����ݿ�����û�������Ϣ����һ��
	public boolean doInsertTeamAction(TeamAction tAction) throws Exception;

	// �����ݿ�����û�������Ϣ���ٴη���
	public boolean doInsertTeamActionAgain(TeamAction tAction) throws Exception;

	// ����ע��ɹ�����
	public boolean doUpdateRegistSuccess(String ip) throws Exception;

	// �����ݿ�����û�ע�������Ϣ
	public boolean doInsertErrorNumber(String ip, int eNumber) throws Exception;

}
