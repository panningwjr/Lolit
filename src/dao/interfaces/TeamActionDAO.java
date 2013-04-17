package dao.interfaces;

import vo.TeamAction;

public interface TeamActionDAO {

	// 关闭数据库连接
	public void closeDBC3() throws Exception;

	public void closeDBC2() throws Exception;

	// 查询用户ip是否已经存在
	public boolean doSelectTeamActionIp(String ip) throws Exception;

	// 向数据库插入用户操作信息，第一次
	public boolean doInsertTeamAction(TeamAction tAction) throws Exception;

	// 向数据库插入用户操作信息，再次访问
	public boolean doUpdateTeamActionAgain(TeamAction tAction) throws Exception;

	// 更新注册成功次数
	public boolean doUpdateRegistSuccess(String ip) throws Exception;

	// 向数据库插入用户注册错误信息
	public boolean doInsertErrorNumber(String ip, int eNumber) throws Exception;

}
