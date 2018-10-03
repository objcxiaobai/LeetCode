//
//  Rotatearray.swift
//  LeetCode2
//
//  Created by 冼 on 2018/10/3.
//  Copyright © 2018 Null. All rights reserved.
//

import Foundation
//旋转数组
/**
 将包含 n 个元素的数组向右旋转 k 步。
 
 例如，如果 n = 7 , k = 3，给定数组
 [1,2,3,4,5,6,7] ，向右旋转后的结果为
 [5,6,7,1,2,3,4]。
 
 注意:
 尽可能找到更多的解决方案，这里最少有三种不同的方法解决这个问题。
 
 提示:
 要求空间复杂度为 O(1)
 **/
class Solution6{
    
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        //生成两个不同的内存空间，newNums负责排序
        var newNums = nums
        
        for i in 0..<nums.count {
            //取余：a%b，如果b>a,就取a本身
            newNums[(i+k) % nums.count] = nums[i]
        }
        //排序完成后,使nums指向newNums
        nums = newNums
        
    }
    
    
}

//方法一：
//过不了最后一个测试用例。。。（超出时间限制）
func rotate1 (_ nums: inout [Int], _ k: Int) {
    
    if k<0{
        return
    }
    
    
    var num = 0
    
    while num<k {
        
        for i in 0..<nums.count{
            
            //nums.swapAt(nums.count-1, i)
            let temp = nums[nums.count-1]
            nums[nums.count-1] = nums[i]
            nums[i] = temp
            
            
            
        }
        num+=1
    }
    
    print(nums)
}
//方法2:
func rotate(_ nums: inout [Int], _ k: Int) {
    
    //生成两个不同的内存空间，newNums负责排序
    var newNums = nums
    
    for i in 0..<nums.count {
        //取余：a%b，如果b>a,就取a本身
        newNums[(i+k) % nums.count] = nums[i]
    }
    //排序完成后,使nums指向newNums
    nums = newNums
    
}


//var nums = [1,2,3,4,5,6,7]
//let c = Solution6()
//c.rotate(&nums, 3)

