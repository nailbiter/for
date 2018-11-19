import java.util.*;
public class Test
{
    public static void main(String[] args)
    {
        for(int i = 0; i < args.length; i++){
            System.out.format("%02d: %s\n",i,args[i]);
        }
    }
}
