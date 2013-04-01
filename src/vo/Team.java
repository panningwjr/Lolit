package vo;

public class Team {

	private Long tId;
	private String tName;
	private String tPwd;
	private String tLogo;
	private String tBelonging;
	private long tPhone;     //int 大小不够，要用long
	private boolean tZero;
	private String tRemark;
	private String tState;
	private int tOrder;
	
	private Player p1;
	private Player p2;
	private Player p3;
	private Player p4;
	private Player p5;
	private Player p6;
	private Player p7;
	
	
	public Long gettId() {
		return tId;
	}
	public void settId(Long tId) {
		this.tId = tId;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String gettPwd() {
		return tPwd;
	}
	public void settPwd(String tPwd) {
		this.tPwd = tPwd;
	}
	public String gettLogo() {
		return tLogo;
	}
	public void settLogo(String tLogo) {
		this.tLogo = tLogo;
	}
	public String gettBelonging() {
		return tBelonging;
	}
	public void settBelonging(String tBelonging) {
		this.tBelonging = tBelonging;
	}
	public long gettPhone() {
		return tPhone;
	}
	public void settPhone(long tPhone) {
		this.tPhone = tPhone;
	}
	public boolean gettZero() {
		return tZero;
	}
	public void settZero(boolean tZero) {
		this.tZero = tZero;
	}
	public String gettRemark() {
		return tRemark;
	}
	public void settRemark(String tRemark) {
		this.tRemark = tRemark;
	}
	public String gettState() {
		return tState;
	}
	public void settState(String tState) {
		this.tState = tState;
	}
	public int gettOrder() {
		return tOrder;
	}
	public void settOrder(int tOrder) {
		this.tOrder = tOrder;
	}
	public Player getP1() {
		return p1;
	}
	
	
	public void setP1(Player p1) {
		this.p1 = p1;
	}
	public Player getP2() {
		return p2;
	}
	public void setP2(Player p2) {
		this.p2 = p2;
	}
	public Player getP3() {
		return p3;
	}
	public void setP3(Player p3) {
		this.p3 = p3;
	}
	public Player getP4() {
		return p4;
	}
	public void setP4(Player p4) {
		this.p4 = p4;
	}
	public Player getP5() {
		return p5;
	}
	public void setP5(Player p5) {
		this.p5 = p5;
	}
	public Player getP6() {
		return p6;
	}
	public void setP6(Player p6) {
		this.p6 = p6;
	}
	public Player getP7() {
		return p7;
	}
	public void setP7(Player p7) {
		this.p7 = p7;
	}
	
}
