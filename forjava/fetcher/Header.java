public interface Header
{
    public Message getMessage();
    public boolean equals(Object obj);
    public int hashCode();
    public String toDisplayableString();
}
