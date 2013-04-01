package dao.interfaces;

import vo.Member;

public interface MemberDAO {

	// 关闭数据库连接
	public void closeDBC3() throws Exception;

	public void closeDBC2() throws Exception;

	//成员登陆，验证密码
	public boolean doSelectForSignIn(Member member) throws Exception;
}
