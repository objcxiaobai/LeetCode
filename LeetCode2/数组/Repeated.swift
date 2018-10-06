//
//  Repeated.swift
//  LeetCode2
//
//  Created by 冼 on 2018/10/7.
//  Copyright © 2018 Null. All rights reserved.
//

import Foundation
/**
 存在重复
 给定一个整数数组，判断是否存在重复元素。
 如果任何值在数组中出现至少两次，函数应该返回 true。如果每个元素都不相同，则返回 false。
 

 **/
class Solution7{
    
    //方法3的思路：
    //根据字典的key唯一性，进行判断，如果存在这个就返回ture
    func containsDuplicate(_ nums:[Int]) -> Bool{
        var isNes = false
        
        var dict = [Int:Int]()
        
        for i in 0..<nums.count {
            
            if let _ = dict[nums[i]]{
                isNes = true
                return isNes
            }
            
            dict[nums[i]] = nums[i]
            
        }
        
        return isNes
        
    }
}

//let arrys = [0,2,0,4]
//let c = Solution7()
//print(c.containsDuplicate(arrys))


/**
 方法1的思路：
 
 首先拿数组一个元素，对数组所有元素进行比较，包括进行比较的元素。
 出现两次才是重复。
 **/
func containsDuplicate1(_ nums:[Int]) -> Bool{
    //返回值
    var isAppear = false
    //用数组里面一个元素遍历数组全部元素。
    var number = 0;
    
    while number<nums.count {
        //出现次数
        var temp = 0;
        for i in 0..<nums.count{
            //有一个相同的时候就+1
            if nums[number] == nums[i]{
                temp+=1;
            }
            
            if nums[number] == nums[i] && temp>=2{
                isAppear = true
            }
        }
        
        
        number+=1;
    }
    
    return isAppear
    
}
//方法2的思路：
//通过sorted函数进行从小到大排序，如果第一个与第二个值相同，说明重复
func containsDuplicate2(_ nums:[Int]) -> Bool{
    var isNes = false
    let arrys = nums.sorted();
    //记录下一个下标的元素
    var number = 1
    
    for i in 0..<arrys.count {
        
        if number == arrys.count{
            
            return isNes
        }
        
        if arrys[i] == arrys[number]{
            
            isNes = true
        }
        
        number+=1;
    }
    return isNes
}
//方法3的思路：
//根据字典的key唯一性，进行判断，如果存在这个就返回ture
func containsDuplicate(_ nums:[Int]) -> Bool{
    var isNes = false
    
    var dict = [Int:Int]()
    
    for i in 0..<nums.count {
        
        if let _ = dict[nums[i]]{
            isNes = true
            return isNes
        }
        
        dict[nums[i]] = nums[i]
        
    }
    
    return isNes
    
}
