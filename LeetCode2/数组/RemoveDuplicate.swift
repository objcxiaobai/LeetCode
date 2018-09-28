//
//  RemoveDuplicate.swift
//  LeetCode2
//
//  Created by 冼 on 2018/9/28.
//  Copyright © 2018年 Null. All rights reserved.
//

import Foundation
/**
 从排序数组中删除重复项:
 
 给定一个排序数组，你需要在原地删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。
 不要使用额外的数组空间，你必须在原地修改输入数组并在使用 O(1) 额外空间的条件下完成。
 
 例子：
 给定数组 nums = [1,1,2],
 函数应该返回新的长度 2, 并且原数组 nums 的前两个元素被修改为 1, 2。
 
 知识点：
 1.inout:传人传出参数，函数参数默认值是常量，不能修改其值。
 传入传出参数为函数影响函数体外部的作用域提供了一种可选的方式。
 
 2.Swift中已经废弃了++运算符，所以在使用 size += 1 代替。当前Leetcode语言环境Swift 4.0）
 3.要是不写 var /let 默认let
 
 **/

//定义一个指针index，从数组下标为0开始遍历，当数组下一个元素和当前元素值相等的时候，我们移除当前下标的元素，指针index不动；
//当两个值不相等的时候，我们把指针index向后移动一位，以此类推。
//【注意】遍历的次数是从0开始到nums.count-1为止，不然会出现数组越界。
//方法1
class Solution1{
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var temp = 0
        
        while temp < nums.count-1 {
            
            if nums[temp] == nums[temp+1]{
                
                nums.remove(at: temp)
            }
            else{
                temp = temp+1
            }
            
        }
        
        return nums.count
        
        
    }
}

//方法2
//定义一个变量temp，记录不重复的元素个数.
//然后从下标为0开始遍历数组，挨个和temp为下标的在数组中的对应的元素进行比较。
//如果元素相同，则继续往后遍历；如果不同，则temp+1，同时把新元素赋值给当前temp下标的元素。
//【注意】遍历的次数是从0开始到nums.count-1为止，不然会出现数组越界。

class Solution2{
    func removeDuplicates(_ nums: inout [Int]) -> Int{
        
        
        if nums.count == 0  {
            return nums.count;
        }
        
        var temp = 0;
        
        for i in 0...nums.count-1 {
            
            if nums[temp] != nums[i]{
                
                temp+=1;
                nums[temp] = nums[i]
                
            }
            
        }
        
        
        //从下标移除
        for _ in (temp+1)..<nums.count {
            nums.remove(at: temp)
        }
        
        //在return number之前，我们从number开始把后面的元素都删掉就可以了。
        //nums.removeSubrange(temp..<nums.endIndex)
        return temp+1;
    }
    
    
}
//var nums = [1,1,2]
//let s = Solution()
//print((s.removeDuplicates(&nums)))


//var nums = [1,1,2,2,3]
//let s = Solution2()
//print(s.removeDuplicates(&nums))
//print(nums)

