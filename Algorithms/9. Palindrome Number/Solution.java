package com.leetcode.taskk.task9;

public class Solution  {

    public static void main(String[] args) {

    }

    public static boolean isPalindrome(int x) {
        int reverse = 0;
        int sum = 0;
        int temp = x;
        while (x > 0) {
            reverse = x % 10;
            sum = (sum * 10) + reverse;
            x = x / 10;
        }
        if (temp == sum) return true;
        else return false;
    }
}
