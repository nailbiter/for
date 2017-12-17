package util;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Objects;

import org.telegram.telegrambots.api.methods.GetFile;
import org.telegram.telegrambots.api.objects.Document;
import org.telegram.telegrambots.api.objects.PhotoSize;
import org.telegram.telegrambots.bots.AbsSender;
import org.telegram.telegrambots.bots.DefaultAbsSender;
import org.telegram.telegrambots.exceptions.TelegramApiException;

public class Util{
	public static java.io.File downloadPhotoByFilePath(String filePath,DefaultAbsSender sender) {
	    try {
	        // Download the file calling AbsSender::downloadFile method
	        return sender.downloadFile(filePath);
	    } catch (TelegramApiException e) {
	        e.printStackTrace();
	    }
	    return null;
	}
	public static String getFilePath(Document doc, AbsSender sender) {
	    Objects.requireNonNull(doc);

	        // We create a GetFile method and set the file_id from the photo
	        GetFile getFileMethod = new GetFile();
	        getFileMethod.setFileId(doc.getFileId());
	        try {
	            // We execute the method using AbsSender::getFile method.
	            org.telegram.telegrambots.api.objects.File file = sender.getFile(getFileMethod);
	            // We now have the file_path
	            return file.getFilePath();
	        } catch (TelegramApiException e) {
	            e.printStackTrace();
	        }
	    
	    return null; // Just in case
	}
	public static void copyFileUsingStream(File source, File dest) throws IOException {
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
	public static String runScript(String cmd) throws Exception{
		System.out.println("going to run: "+cmd);
		StringBuilder res = new StringBuilder();
		try {
		Runtime run = Runtime.getRuntime();
        Process pr = run.exec(cmd);
        pr.waitFor();
        BufferedReader buf = new BufferedReader(new InputStreamReader(pr.getInputStream()));
        String line = "";
        while ((line=buf.readLine())!=null) {
                res.append(line+"\n");
        }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println("here with: "+res.toString());
        return res.toString();
	}
}
