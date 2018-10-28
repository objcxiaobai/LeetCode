//
//  MoveZeroes.swift
//  LeetCode2
//
//  Created by 冼 on 2018/10/28.
//  Copyright © 2018 Null. All rights reserved.
//

import Foundation
/**
 方法一：
 func moveZeroes(_ nums:  inout [Int]){
 
 //游标0开始
 var index = 0
 //设两个下标，先都指向数组头元素
 //i往后遍历
 for i in 0..<nums.count {
 
 if(nums[i] != 0 ){
 //然后与另一个下标的数进行交换，直到找到最后一个元素为止。
 let temp = nums[index]
 
 nums[index] = nums[i];
 
 nums[i] = temp
 
 index+=1
 }
 
 }
 
 }
 
 
 **/

class Solution11{
    
    func moveZeroes(_ nums:  inout [Int]){
        //设两个下标，先都指向数组头元素
        var right = 0
        var letf = 0
        
        while right < nums.count {
            //right依次向后找不为零的数
            if nums[right] != 0{
                //然后与另一个下标的数进行交换，直到找到最后一个元素为止。
                let temp = nums[right]
                nums[right] = nums[letf]
                nums[letf] = temp
                letf+=1
            }
            right+=1
        }
        
    }
    
}



//var arrys = [0,1,0,3,12]
//let s = Solution11()
//s.moveZeroes(&arrys)
//print(arrys)
