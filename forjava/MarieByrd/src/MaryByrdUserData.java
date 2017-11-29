import org.json.JSONObject;

public class MaryByrdUserData implements UserData {
	int i = 0;
	@Override
	public void Update(JSONObject res) {
		i = (i+1)%2;
		return;
	}
	int getCounter(){return i;}
}
