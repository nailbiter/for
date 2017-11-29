import org.json.JSONObject;
import org.telegram.telegrambots.api.objects.Message;

public class MyAssistantBot extends MyBasicBot {
	MyAssistantBot()
	{
		System.out.println("tesime");
	}

	@Override
	JSONObject parse(Message msg, UserData ud) throws Exception {
		// TODO Auto-generated method stub
		return new JSONObject().put("msg",msg.getText());
	}

	@Override
	UserData createUserData(Long chatId) {
		// TODO Auto-generated method stub
		return new MyAssistantUserData();
	}

	@Override
	String getResultAndFormat(JSONObject res) throws Exception {
		// TODO Auto-generated method stub
		return res.getString("msg");
	}

	@Override
	public String getBotUsername() {
		// TODO Auto-generated method stub
		return "AssistantBot";
	}

	@Override
	public String getBotToken() {
		// TODO Auto-generated method stub
		return "455331927:AAFDVVGCbpwlPKFUtKTqfJjNPSAQlKBCm3Q";
	}

}
