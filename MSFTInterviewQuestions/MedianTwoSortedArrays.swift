//
//  MedianTwoSortedArrays.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 26/12/2021.
//

import Foundation


// https://leetcode.com/problems/median-of-two-sorted-arrays/
class MedianTwoSortedArrays {
    
    func middleElement(of array: [Int]) -> Double {
        if (array.count % 2) == 0 {
            return (Double(array[array.count / 2]) + Double(array[(array.count / 2) + 1])) / 2.0
        }
        return Double(array[array.count / 2])
    }
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        if nums1.isEmpty {
            return middleElement(of: nums2)
        }
        
        if nums2.isEmpty {
            return middleElement(of: nums1)
        }
        
        if nums2.first! > nums1.last! {
            
        }
    }
}
