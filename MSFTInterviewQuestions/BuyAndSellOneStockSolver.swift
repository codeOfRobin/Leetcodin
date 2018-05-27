//
//  BuyAndSellOneStockSolver.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import Foundation

class BuyAndSellOneStockSolver {
	//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
	func solve(prices: [Int]) -> Int {
		var minPrice: Int? = nil
		var maxProfit = 0

		for price in prices {
			if minPrice == nil {
				minPrice = price
			}

			if let unwrappedMinPrice = minPrice, price < unwrappedMinPrice {
				minPrice = price
			}

			if let unwrappedMinPrice = minPrice, (price - unwrappedMinPrice) > maxProfit {
				maxProfit = price - unwrappedMinPrice
			}
		}

		return maxProfit
	}


	//https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/description/
	func solvePart2(prices: [Int]) -> Int {
		guard prices.count > 1 else {
			return 0
		}

		var maxProfit = 0
		var lastPrice = prices[0]

		for price in prices[1..<prices.count] {
			if price > lastPrice {
				maxProfit += price - lastPrice
			}
			lastPrice = price
		}
		return maxProfit
	}
}
