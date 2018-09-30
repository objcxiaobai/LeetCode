//
//  StocksBest.swift
//  LeetCode2
//
//  Created by 冼 on 2018/9/30.
//  Copyright © 2018 Null. All rights reserved.
//

import Foundation
//买卖股票的最佳时机 II
//设计一个算法来计算你所能获取的最大利润。你可以尽可能地完成更多的交易（多次买卖一支股票）。
//注意：你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）。

/**
 知识点加强：
 
 区间： 0...5  包左又包右
 continue :遇到continue结束当前操作，直接到下一个循环
 
 **/
class Solution3{
    func maxProfit(_ prices: [Int]) -> Int {
        //记录第二天卖出去
        var day = 1
        //总数
        var numbers = 0
    
        for i in 0..<prices.count {
            if day == prices.count{
                return numbers
            }
            
            if prices[i] > prices[day]{
                day+=1
                continue
            }else{
                numbers = prices[day]-prices[i] + numbers
                day+=1
            }
        }
        
        
        
        
        return numbers;
    }
    
}

//网上大佬做法，只要第二天高于第一天就卖
//class Solution5 {
//    func maxProfit(_ prices: [Int]) -> Int {
//
//        if prices.count == 0  || prices.count == 1 {
//            return 0
//        }
//
//        var sum = 0
//        for i in 1..<prices.count {
//            if prices[i] > prices[i - 1] {
//                sum += prices[i] - prices[i - 1]
//            }
//        }
//        return sum
//    }
//}

//var nums = [7,1,5,3,6,4]
//var nums = [7,6,4,3,1]
//var nums = [1,2,3,4,5]

//let c = Solution3()
//print(c.maxProfit(nums))


