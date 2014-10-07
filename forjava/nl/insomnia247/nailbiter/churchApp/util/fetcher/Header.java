package nl.insomnia247.nailbiter.churchApp.util.fetcher;
public interface Header
{
    public Message getMessage();//if it was null before -- save it, call factory
    void setMessage(Message msg);
    public boolean isNew();
    void setNew(boolean new_in);
    public boolean equals(Object obj);//implement via char string
    public String toDisplayableString();
}
