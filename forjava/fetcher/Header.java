public interface Header
{
    public Message getMessage(Factory factory);//if it was null before -- save it, call factory
    public boolean equals(Object obj);//implement via char string
    public int hashCode();
    public String toDisplayableString();
}
