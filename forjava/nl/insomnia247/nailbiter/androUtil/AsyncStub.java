package nl.insomnia247.nailbiter.androUtil;

import android.os.Handler;

public class AsyncStub extends android.os.AsyncTask<Object,Void,Void>
{
    public interface Dispatcher{ public void execute(int code, Handler h, Object... args); }

    private Dispatcher d_;
    private int code_;
    private Handler h_;

    public AsyncStub(Dispatcher d, int code, Handler h)
    {
        super();
        d_ = d;
        code_ = code;
        h_ = h;
    }

    @Override
    protected Void doInBackground(Object... params){ d_.execute(code_,h_,params); return null; }

    @Override
    protected void onPostExecute(Void result) {}

    @Override
    protected void onPreExecute() {}

    @Override
    protected void onProgressUpdate(Void... values) {}
}
