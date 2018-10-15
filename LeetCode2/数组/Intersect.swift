//
//  Intersect.swift
//  LeetCode2
//
//  Created by 冼 on 2018/10/15.
//  Copyright © 2018 Null. All rights reserved.
//

import Foundation
/**
 两个数组的交集 II
 示例 1:
 
 输入: nums1 = [1,2,2,1], nums2 = [2,2]
 输出: [2,2]
 示例 2:
 
 输入: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 输出: [4,9]
 说明：
 
 输出结果中每个元素出现的次数，应与元素在两个数组中出现的次数一致。
 我们可以不考虑输出结果的顺序。
 
 **/
class Solution9{
    
    func intersect(_ nums1:[Int], _ nums2:[Int]) -> [Int] {
        
        //首先对两个数组从小到大进行排序
        let temp1 = nums1.sorted()
        let temp2 = nums2.sorted()
        
        //定义两个下标对应不同的数组
        var pos1 = 0
        var pos2 = 0
        
        //交集后的数组
        var nums3 = [Int]();
        
        while ( pos1 < temp1.count && pos2 < temp2.count) {
            //如果两个都相等就把数组1的元素添加到交集数组中
            if(temp1[pos1] == temp2[pos2]){
                nums3.append(temp1[pos1])
                pos1+=1
                pos2+=1
                //如果数组1大于数组2，就让数组2下表加1.
            }else if(temp1[pos1] > temp2[pos2]){
                pos2+=1;
                
                //则反之
            }else{
                
                pos1+=1;
            }
            
        }
        
        return nums3;
        
    }
    
    
}


//let nums1 = [4,9,5]
//let nums2 = [9,4,9,8,4]
//let c  = Solution9()
//print(c.intersect(nums1, nums2));



//我的做法
//var arrys = [Int]()
//
//var maxArrys = [Int]()
//var minArrys = [Int]()
//
//
//
////算出哪个长度最大
//if nums1.count > nums2.count {
//
//    maxArrys = nums1
//    minArrys = nums2
//}else{
//    maxArrys = nums2
//    minArrys = nums1
//}
//
//var i = 0
//var j = 0
//while i < maxArrys.count {
//
//    if j >= minArrys.count{
//        j = 0;
//    }
//
//    if(maxArrys[i] == minArrys[j]){
//        arrys.append(maxArrys[i])
//    }
//
//    i+=1;
//    j+=1;
//}
//
//
//return arrys;
//

