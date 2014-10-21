package nl.insomnia247.nailbiter.util.fetcher;
import java.util.*;
public interface Factory
{
    public List<Header> getStored();//used
    public boolean remove(Header header);//used
    public Message getMessage(Header header);
    public List<Header> download()throws Exception;//used
    public boolean saveHeader(Header header);//used
    public boolean saveMessageAndHeader(Header header, Message message);
}
