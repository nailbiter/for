// you can also use imports, for example:
 import java.util.*;

// you can write to stdout for debugging purposes, e.g.
// System.out.println("this is a debug message");

public class Solution {
	public static void main(String[] args){
        System.out.println(solution(new int[]{1,0,2,0,0,2}));
    }
    public int solution(int[] A) {
        return parse(binarian(A))
    }
    public static int binarian(int[] A){
        int res = 0;
        for(int a:A){
            res += Math.pow(2,a);
        }
        return res;
    }
    public static int parse(int x){
        int res = 0;
        while(x>0){
            int candidate = 1;
            while(candidate<=x){
                candidate *= 2;
            }
            x -= candidate/2;
            res++;
        }
        return res;
    }
}
