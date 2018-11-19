import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class Test
{
    public static void main(String[] args)
    {
        for(int i = 0; i < args.length; i++){
            System.out.format("%02d: %s\n",i,args[i]);
        }
        String score = "   3/5  ";
        Matcher m = null;
        if((m = Pattern.compile("\\s*(\\d+)\\s*/\\s*(\\d+)\\s*").matcher(score)).matches()) {
            System.out.format("\thi with %d and %d\n",Integer.parseInt(m.group(1)),Integer.parseInt(m.group(2)));
        } else {
            System.out.format("\tno hi\n");
        }
    }
}
