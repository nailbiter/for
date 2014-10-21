package nl.insomnia247.nailbiter.util.fetcher;
import java.util.*;

public class Fetcher
{
    Factory factory_;
    boolean haveInternet_ = true;
    private static final boolean DEBUG = true;
    List<Header> oldm = null;
    public Fetcher(Factory factory)
    {
        factory_ = factory;
        oldm = factory_.getStored();
        if( DEBUG == true )
        {
            System.out.println("stored");
            for( Header header : oldm )
                System.out.println("\t" + header.toDisplayableString());
        }
    }
    public void update()
    {
        List<Header> newm = null;
        try{ newm = factory_.download(); }
        catch(Exception e)
        {
            haveInternet_ = false; 
            return;
        }
        if( DEBUG == true )
        {
            System.out.println("downloaded");
            for( Header header : newm )
                System.out.println("\t" + header.toDisplayableString());
        }

        for (Iterator<Header> it = oldm.iterator(); it.hasNext(); )
        {
            Header header = it.next();
            if( !newm.contains(header) )
            {
                factory_.remove(header);
                if( DEBUG == true ){ System.out.println(header.toDisplayableString()+" to be removed"); }
                it.remove();
            }
        }
        for (Iterator<Header> it = newm.iterator(); it.hasNext(); )
        {
            Header header = it.next();
            if( !oldm.contains(header) )
            {
                header.setNew(true);
                oldm.add(header);
                if( DEBUG == true ){ System.out.println(header.toDisplayableString()+" to be saved"); }
                factory_.saveHeader(header);
            }
        }
    }
    public List<Header> getMessages(){ return oldm; }
    public Message getMessage(Header h)
    {
        h.setNew(false);
        if( h.getMessage() == null )
        {
            Message m = factory_.getMessage(h);
            h.setMessage(m);
            factory_.saveMessageAndHeader(h,m);
        }
        return h.getMessage();
    }
    public boolean isHavingInternet(){ return haveInternet_; }
}
