package dao.interfaces;

import java.util.List;

import vo.Team;


public interface TeamDAO {

	
	// 关闭数据库连接
	public void closeDBC3() throws Exception;

	public void closeDBC2() throws Exception;
	
	//验证队伍名是否已经存在
	public boolean doSelectTeamName(String tName) throws Exception;

	// 参赛报名时向数据库插入数据
	public boolean doInsert(Team team) throws Exception;

	// 队伍身份验证
	public boolean doSelectForSignIn(Long tId, String tPwd) throws Exception;
	
	// 队伍是否已经抽签验证
	public boolean doSelectForIfLotted(Long tId) throws Exception;

	// 插入抽签顺位
	public boolean doInsertOrder(Long tId) throws Exception;

	// 获取所有队伍顺位
	public List<Team> doSelectForMatchList() throws Exception;
	
	//获取所有可参赛队伍队伍
	public List<Team> doSelectForTeamList(int state) throws Exception;
	
	//获取各服务器报名人数
	public List<Integer> doSelectForServerCount()throws Exception;
	
	//获取胜场区间人数
	public List<Integer> doSelectForWinCount()throws Exception;
	
	//查看各学院报名人数
	public List<Integer> doSelectForInstituteCount()throws Exception;
	
	//查看各区报名人数  主要分 东，南，西， 北苑 4个区域
	public List<Integer> getBelongAreaCount(List<Integer> instituteCount) throws Exception;
	
	//查看各rank区间人数
	public List<Integer> doSelectRankCount() throws Exception;
}
