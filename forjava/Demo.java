import nl.insomnia247.nailbiter.churchApp.util.fetcher.*;
import java.util.*;
public class Demo
{
    public static void main(String[] args)
    {
        System.out.println("hi there");
        Factory factory = new FactoryImpl();
        Fetcher fetcher = new Fetcher(factory);
        List<Header> headers = fetcher.getMessages();

        System.out.println("total:");
        for( Header header : headers )
            System.out.println("\t" + header.toDisplayableString());

        Scanner user_input = new Scanner( System.in );
        System.out.print("> ");
        String user_in = user_input.next();
        for( Header header : headers )
        {
            if(header.toDisplayableString().equals(user_in))
            {
                Message m = fetcher.getMessage(header);
                System.out.println("msg: "+((FactoryImpl.MessageImpl)m).getContent());
            }
        }

        System.out.println("total:");
        for( Header header : headers )
            System.out.println("\t" + header.toDisplayableString());
    }
}
