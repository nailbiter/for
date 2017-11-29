import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.telegrambots.api.methods.GetFile;
import org.telegram.telegrambots.api.methods.send.SendMessage;
import org.telegram.telegrambots.bots.TelegramWebhookBot;
import org.telegram.telegrambots.api.objects.Update;
import org.telegram.telegrambots.bots.TelegramLongPollingBot;
import org.telegram.telegrambots.exceptions.TelegramApiException;
import org.telegram.telegrambots.logging.BotLogger;
import org.telegram.telegrambots.api.objects.Document;
import org.telegram.telegrambots.api.objects.Message;
import org.telegram.telegrambots.api.objects.PhotoSize;

public class MyMaryByrdBot extends MyBasicBot {
	java.util.Hashtable<Long, UserData> userData = new Hashtable<Long,UserData>();
	
	String getResultAndFormat(JSONObject ins) throws Exception
	{
		StringBuilder sb = new StringBuilder();
		JSONArray res = ins.getJSONArray("msg");
		for(int i = 0;i < res.length();i++)
			sb.append(res.get(i).toString() + "\n");
		return sb.toString();
	}
	JSONObject parse(Message msg, UserData ud) {
		JSONObject res = new JSONObject();
		if(msg.getPhoto()!=null)
		{
			res.put("key", "value");
			res.put("len",msg.getPhoto().size());
			if(msg.getPhoto().size()>0)
			{
				res.put("info", msg.getPhoto().get(0).getFilePath());
				JSONArray arr = new JSONArray();
				for(PhotoSize ps: msg.getPhoto())
					arr.put(new JSONObject()
							.put("wid", ps.getWidth())
							.put("hei", ps.getHeight()));
				res.put("moreinfo", arr);
			}
			try
			{
				res.put("msg",new JSONArray());
				String SAVETO = "/Users/nailbiter/faces/";
				File file = this.downloadPhotoByFilePath(this.getFilePath(this.getPhoto(msg)));
				String fn = SAVETO + "photo" + ((MaryByrdUserData)ud).getCounter()+".jpg";
				res.getJSONArray("msg").put("save as "+fn);
				File file2 = new File(fn);
				this.copyFileUsingStream(file, file2);
				res.put("counter", ((MaryByrdUserData)ud).getCounter());
				if(((MaryByrdUserData)ud).getCounter()==1)
				{
					try
					{
						String script = "/Users/nailbiter/bin/facecomp.sh";
						Runtime run = Runtime.getRuntime();
						Process pr = run.exec(script);
						pr.waitFor();
						BufferedReader buf = new BufferedReader(new InputStreamReader(pr.getInputStream()));
						String line = "";
						while ((line=buf.readLine())!=null) 
						{
							System.out.println(line);
						}
						System.out.println("that's all, folks!");
					}
					catch(Exception e)
					{
						System.out.println(e.getMessage());
					}
					  byte[] encoded = Files.readAllBytes(Paths.get(SAVETO + "out.txt"));
					  String ms = new String(encoded);
					  System.out.println("ms: "+ms);
					  res.getJSONArray("msg").put(ms);
				}
				else
				{
					res.getJSONArray("msg").put("отправь еще одну фотографию");
				}
			}
			catch(Exception e)
			{
				res.put("exception", e.getMessage());
                e.printStackTrace(System.out);
				System.out.println("exc: "+e.getMessage());
			}
		}
		return res;
	}
	private static void copyFileUsingStream(File source, File dest) throws IOException {
	    InputStream is = null;
	    OutputStream os = null;
	    try {
	        is = new FileInputStream(source);
	        os = new FileOutputStream(dest);
	        byte[] buffer = new byte[1024];
	        int length;
	        while ((length = is.read(buffer)) > 0) {
	            os.write(buffer, 0, length);
	        }
	    } finally {
	        is.close();
	        os.close();
	    }
	}
	public PhotoSize getPhoto(Message msg) {
	    // Check that the update contains a message and the message has a photo
	    if (msg.hasPhoto()) {
	        // When receiving a photo, you usually get different sizes of it
	        List<PhotoSize> photos = msg.getPhoto();

	        // We fetch the bigger photo
	        return photos.stream()
	                .sorted(Comparator.comparing(PhotoSize::getFileSize).reversed())
	                .findFirst()
	                .orElse(null);
	    }
	    

	    // Return null if not found
	    return null;
	}
	public String getFilePath(PhotoSize photo) {
	    Objects.requireNonNull(photo);

	    if (photo.hasFilePath()) { // If the file_path is already present, we are done!
	        return photo.getFilePath();
	    } else { // If not, let find it
	        // We create a GetFile method and set the file_id from the photo
	        GetFile getFileMethod = new GetFile();
	        getFileMethod.setFileId(photo.getFileId());
	        try {
	            // We execute the method using AbsSender::getFile method.
	            org.telegram.telegrambots.api.objects.File file = getFile(getFileMethod);
	            // We now have the file_path
	            return file.getFilePath();
	        } catch (TelegramApiException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return null; // Just in case
	}
	public java.io.File downloadPhotoByFilePath(String filePath) {
	    try {
	        // Download the file calling AbsSender::downloadFile method
	        return downloadFile(filePath);
	    } catch (TelegramApiException e) {
	        e.printStackTrace();
	    }

	    return null;
	}
	protected String getHelpMessage()
	{
		return "help";
	}

    @Override
    public String getBotUsername() {
        return "MarieByrdBot";
    }
    @Override
    public String getBotToken() {
        return "466514613:AAH3xdB95F9TQBli57FZExrUi2J_A2YBn7E";
    }
	@Override
	UserData createUserData(Long chatId) {
		return new MaryByrdUserData();
	}
	@Override
	public String getLogString() {
		return "MARYBYRDBOT";
	}
}
