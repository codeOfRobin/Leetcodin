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
    
    func middleElementOfDisjointSortedArrays(arr1: [Int], arr2: [Int]) {
        
    }
    
    func distributeElements(of arr1: [Int], arr2: [Int], arr1Start: Int, arr1End:Int, arr2Start: Int, arr2End:Int) -> Int {
        if (arr1[(arr1Start + arr1End) / 2] > arr2[(arr2Start + arr2End) / 2]) {

        }
    }
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let half = (nums1.count + nums2.count) / 2
        
        var l = 0
        var r = nums1.count - 1
        
        var partition1 = (l + r) / 2
        var partition2 = half - partition1 - 1
        
        while ((nums1[partition1] < nums2[partition2 + 1] || nums2[partition2] < nums1[partition1 + 1]) == false) {
            
        }
        
    }
}




//        if nums1.isEmpty {
//            return middleElement(of: nums2)
//        }
//
//        if nums2.isEmpty {
//            return middleElement(of: nums1)
//        }
//
//        if nums2.first! > nums1.last! {
//            middleElementOfDisjointSortedArrays(arr1: nums1, arr2: nums2)
//        }
//
//        if nums1.first! > nums2.last! {
//            middleElementOfDisjointSortedArrays(arr1: nums2, arr2: nums1)
//        }
