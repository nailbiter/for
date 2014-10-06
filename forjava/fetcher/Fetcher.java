public class Fetcher
{
    Factory factory_;
    boolean haveInternet_ = true;
    public Fetcher(Factory factory)
    {
        factory_ = factory;
        wakeUp();
    }
    private void wakeUp()
    {
        List<Message> oldm = factory_.getStored(),
            newm = null;
        try{ newm = factory_.download(); }
        catch(Exception e){ haveInternet_ = false; }
    }
}
