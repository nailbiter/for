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
    }
}
