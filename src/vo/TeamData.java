package vo;

import java.util.ArrayList;
import java.util.List;

public class TeamData {
	private List<Integer> serverCount = new ArrayList<Integer>();
	private List<Integer> instituteCount = new ArrayList<Integer>();
	private List<Integer> winCount = new ArrayList<Integer>();
	private List<Integer> areaCount = new ArrayList<Integer>();
	private List<Integer> rankCount = new ArrayList<Integer>();
	public List<Integer> getServerCount() {
		return serverCount;
	}
	public void setServerCount(List<Integer> serverCount) {
		this.serverCount = serverCount;
	}
	public List<Integer> getInstituteCount() {
		return instituteCount;
	}
	public void setInstituteCount(List<Integer> instituteCount) {
		this.instituteCount = instituteCount;
	}
	public List<Integer> getWinCount() {
		return winCount;
	}
	public void setWinCount(List<Integer> winCount) {
		this.winCount = winCount;
	}
	public List<Integer> getAreaCount() {
		return areaCount;
	}
	public void setAreaCount(List<Integer> areaCount) {
		this.areaCount = areaCount;
	}
	public List<Integer> getRankCount() {
		return rankCount;
	}
	public void setRankCount(List<Integer> rankCount) {
		this.rankCount = rankCount;
	}
	
}
