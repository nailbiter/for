import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class Test
{
    private static class B {
        String s_;
        public B(String s){
            s_ = s;
        }
        public String toString(){
            return String.format("B: s_ = %s\n",s_);
        }
    }
    private static class A {
        int i_;
        public A(int i){
            i_ = i;
        }
        public String toString(){
            return String.format("A: i_ = %d\n",i_);
        }
    }
    public static void main(String[] args)
    {
        String[] split = "ueouoeu ".split(" +",2);
        for(String s:split)
            System.out.format("split: \"%s\"\n",s);
    }
}
