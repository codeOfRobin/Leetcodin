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
        let (a, b) = nums1.count < nums2.count ? (nums1, nums2) : (nums2, nums1)
        let half = (nums1.count + nums2.count) / 2
        
        var l = 0
        var r = a.count - 1
        
        while true {
            let mid1 = (l + r) / 2
            let mid2 = half - mid1 - 2
            let aLeft = mid1 < 0 ? -Int.max : a[mid1]
            let aRight = (mid1 + 1) >= a.count ? Int.max : a[mid1 + 1]
            let bLeft = mid2 < 0 ? -Int.max : b[mid2]
            let bRight = (mid2 + 1) >= b.count ? Int.max : b[mid2 + 1]
            
            if aLeft < bRight && bLeft < aRight {
                if (nums1.count + nums2.count) % 2 == 0 {
                    return (Double(max(aLeft, bLeft)) + Double(min(aRight, bRight)) / 2.0)
                } else {
                    return Double(min(aRight, bRight))
                }
            } else if aLeft > bRight {
                r = mid1 - 1
            } else if bLeft > aRight {
                l = mid1 + 1
            }
        }
    }
}
