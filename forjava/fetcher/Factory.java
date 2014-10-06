public interface Factory
{
    public List<Header> getStored();
    public boolean remove(Header header);
    public Message getMessage(Header header);
    public List<Header> download()throws Exception;
    public save(Header header);
}
