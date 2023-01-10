package com.leetcode.taskk.task1;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Solution {

    public static void main(String[] args) {
    }

    public static int[] twoSum(int[] nums, int target) {
        if (nums == null && nums.length < 2) return new int[0];
        Map<Integer, Integer> idxByValue = new HashMap<>();
        for (int i = 0; i < nums.length; i++) {
            int curr = target - nums[i];
            if (idxByValue.get(curr) != null) {
                return new int[]{i, idxByValue.get(curr)};
            }
            idxByValue.put(nums[i], i);
        }
        return new int[0];
    }
}
