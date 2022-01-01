//
//  MedianTwoSortedArrays.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 26/12/2021.
//

import Foundation

//TODO: Revise this
// https://leetcode.com/problems/median-of-two-sorted-arrays/
class MedianTwoSortedArrays {
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        // as an example, [1,3,5,7,9] [2,4,6,8], half = 4
        
        // make a the smaller array
        let (a,b) = nums1.count <= nums2.count ? (nums1, nums2) : (nums2, nums1)
        
        // the index _at_ half is median for an odd total count. So if total count was 5, 2 is the middle element. For 6, the average of 2 and 3
        let half = (a.count + b.count + 1) / 2
        
        var start = 0
        var end = a.count
        
        while true {
            //[[2,4], [6,8]]
            let mid1 = (start + end) / 2
            
            //[[1,3], [5,7,9]]
            let mid2 = half - mid1 - 2
            
            let aLeft = mid1 < 0 ? Int.min : a[mid1]
            let aRight = mid1 >= a.count - 1  ? Int.max : a[mid1 + 1]
            let bLeft = mid2 < 0 ? Int.min : b[mid2]
            let bRight = mid2 >= b.count - 1  ? Int.max : b[mid2 + 1]
            
            if aLeft <= bRight && bLeft <= aRight {
                if (a.count + b.count) % 2 == 0 {
                    return (Double(max(aLeft, bLeft)) + Double(min(aRight, bRight))) / 2.0
                } else {
                    return max(Double(aLeft), Double(bLeft))
                }
            } else if aLeft > bRight {
                end = mid1 - 1
            } else {
                start = mid1 + 1
            }
        }
    }
}
