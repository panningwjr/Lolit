package vo;

public class Global {
	
	private static int teamCount = 10;

	public static int getTeamCount() {
		return teamCount;
	}

	public static void setTeamCount(int teamCount) {
		Global.teamCount = teamCount;
	}
}
