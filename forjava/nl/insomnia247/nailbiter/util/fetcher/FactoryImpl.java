package nl.insomnia247.nailbiter.util.fetcher;
import java.util.*;
import java.io.*;
public class FactoryImpl implements Factory
{
    public class HeaderImpl implements Header
    {
        public String header_;
        private boolean newFlag = false;
        private Message msg_ = null;
        HeaderImpl(String msg){ header_ = msg; }
        public boolean equals(Object obj){ return ( (obj instanceof HeaderImpl) && ((HeaderImpl)obj).header_.equals(header_)); }
        public String toDisplayableString(){ return header_ + (newFlag ? "*" : ""); }
        public Message getMessage(){ return msg_; }
        public void setMessage(Message msg){ msg_ = msg; }
        public boolean isNew(){ return newFlag; }
        public void setNew(boolean new_in){ newFlag = new_in; }
    }
    public class MessageImpl implements Message
    {
        private String msg_;
        MessageImpl(String msg){ msg_ = msg; }
        public String getContent(){ return msg_; }
    }
    public List<Header> getStored()
    {
        //FIXME
        List<Header> stored = new ArrayList<Header>();
        /*stored.add(new HeaderImpl("1"));
        stored.add(new HeaderImpl("2"));
        stored.add(new HeaderImpl("3"));*/

        File folder = new File(".");
        File[] listOfFiles = folder.listFiles();

        for (int i = 0; i < listOfFiles.length; i++) 
        {
            if (listOfFiles[i].isFile()) 
            {
                String name = listOfFiles[i].getName();
                if(name.charAt(0)!='m' && name.substring(name.length()-4).equals(".txt"))
                {
                    String realName = name.substring(0,name.length()-4);
                    boolean newFlag = false;
                    if(realName.charAt(realName.length()-1)=='*')
                    {
                        realName = realName.substring(0,realName.length()-1);
                        newFlag = true;
                    }
                    Header h = new HeaderImpl(realName);
                    if(newFlag)
                        h.setNew(true);
                    else
                        h.setNew(false);
                    System.out.println("\trecover message "+realName+(newFlag?" is ":" not ")+"new");

                    String msgName = ("message for "+h.toDisplayableString())+".txt";
                    File f = new File(msgName);
                    if(f.exists() && !f.isDirectory())
                    {
                        h.setMessage(new MessageImpl("message for "+h.toDisplayableString())); 
                        System.out.println("\twith message");
                    }
                    else
                        System.out.println("\twithout message");

                    stored.add(h);
                }
            }
            else
            {
                if (listOfFiles[i].isDirectory())
                {
                    //System.out.println("Directory " + listOfFiles[i].getName());
                }
            }
        }
        return stored;
    }
    public boolean remove(Header header){ return true; }
    public Message getMessage(Header header){ return new MessageImpl("message for "+header.toDisplayableString()); }
    public List<Header> download()throws Exception
    {
        if(false) throw new Exception();
        List<Header> stored = new ArrayList<Header>();
        stored.add(new HeaderImpl("2"));
        stored.add(new HeaderImpl("3"));
        stored.add(new HeaderImpl("4"));
        return stored;
    }
    public boolean saveHeader(Header header)
    {
        System.out.println("going to save "+header.toDisplayableString()+".txt");
        createFile(header.toDisplayableString()+".txt");
        return true;
    }
    public boolean saveMessageAndHeader(Header header, Message message)
    {
        File f = null;
        f = new File(((HeaderImpl)header).header_+".txt");
        f.delete();
        f = new File(((HeaderImpl)header).header_+"*.txt");
        f.delete();
        System.out.println("going to save "+header.toDisplayableString()+".txt");
        saveHeader(header);
        System.out.println("going to save "+((MessageImpl)message).getContent()+".txt");
        createFile(((MessageImpl)message).getContent()+".txt");
        return true;
    }
    private void createFile(String name)
    {
        PrintWriter writer = null;
        try{ writer = new PrintWriter(name, "UTF-8"); }
        catch(Exception e) {}
        writer.println("tesi me");
        writer.close();
    }
}
