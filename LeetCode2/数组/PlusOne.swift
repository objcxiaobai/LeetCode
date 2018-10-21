//
//  PlusOne.swift
//  LeetCode2
//
//  Created by 冼 on 2018/10/22.
//  Copyright © 2018 Null. All rights reserved.
//

import Foundation
/**
 
 加一
 给定一个由整数组成的非空数组所表示的非负整数，在该数的基础上加一。
 
 最高位数字存放在数组的首位， 数组中每个元素只存储一个数字。
 
 你可以假设除了整数 0 之外，这个整数不会以零开头。
 
 示例 1:
 
 输入: [1,2,3]
 输出: [1,2,4]
 解释: 输入数组表示数字 123。

 
 
 tips: 数组分配内存存元素的时候从高位开始到低位
 
 题意:
 
 将每一个元素必须是个位分别存到一个数组中，最高位在最开头，我们需要在末尾的时候给这个数字加1，如果末尾数字是9，那么则会有进位问题，而如果前面位上的数字仍为9，则需要继续向前进位。
 
 具体算法如下：
 
 首先判断最后一位是否为9，若不是，直接加一返回，若是，则该位赋0，再继续查前一位，同样的方法，知道查完第一位。如果第一位原本为9，加一后会产生新的一位，那么最后要做的是，查运算完的第一位是否为0，如果是，则在最前头加（插）一个1。
 **/
class Solution10{
    
    func plusOne(_ digits: [Int]) ->[Int]{
        
        //判断是否非空数组
        if digits.isEmpty{
            return digits
        }
        
        //由于形参，默认是let，so
        var tempArrys = digits
        
        //reversed 内容到过来
        for i in (0..<tempArrys.count).reversed(){
            
            if tempArrys[i] < 9{
                
                tempArrys[i] = tempArrys[i]+1
                return tempArrys
                
            }else{
                
                tempArrys[i] = 0
            }
            
            
        }
        
        //运行到这里即全是9的情况，需要在首位插入数字1
        tempArrys.insert(1, at: 0)
        
        return tempArrys
        
        
    }
    
    
}

//var arrys = [9,9,9]
//var c = Solution10()
//print(c.plusOne(arrys))
