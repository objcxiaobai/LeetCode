//
//  SingleNumber.swift
//  LeetCode2
//
//  Created by 冼 on 2018/10/13.
//  Copyright © 2018 Null. All rights reserved.
//

import Foundation
/**
 只出现一次的数字
 给定一个整数数组，除了某个元素外其余元素均出现两次。请找出这个只出现一次的元素。
 备注：
 你的算法应该是一个线性时间复杂度。 你可以不用额外空间来实现它吗？
 
 
 **/

/*
 
 方法一：
 
 在数学中，异或的数学符号为“⊕”,异或的算数属性为相同为0，不同为1
 在编程中：^
 
 即
 
 1 ⊕ 0 = 1
 0 ⊕ 1 = 1
 1 ⊕ 1 = 0
 0 ⊕ 0 = 0
 
 在编程中：会转成二进制进行异或
 
 
 可利用异或特有的算数属性，任何一个数字异或它自己都等于0，
 也就是说，如果从头到尾依次异或数组中的每一个数字，那么最终的结果刚好是那个只出现一次的数字，
 因为那些出现两次的数字全部在异或中抵消掉了。
 
 初始一个值 temp为0，然后用它异或数组中的每一个值，最后的结果就是这个出现一次的数字。
 
 
 
 
 */
class Solution8 {
    func singleNumber(_ nums: [Int]) -> Int {
        var temp = 0
        
        for i in 0..<nums.count{
            
            temp = temp ^ nums[i]
            
        }
        
        return temp
        
        
        
    }
}
//1,1,2,2,4
//let nums = [4,1,2,1,2]
//let c  = Solution8()
//print(c.singleNumber(nums))
