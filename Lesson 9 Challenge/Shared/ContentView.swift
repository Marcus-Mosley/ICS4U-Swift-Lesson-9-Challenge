//
// ContentView.swift
// Lesson 9 Challenge
//
// Created by Marcus A. Mosley on 2021-01-20
// Copyright (C) 2021 Marcus A. Mosley. All rights reserved.
//

import SwiftUI

// Exersise #1
struct TaxCalculator {
    
    let tax = 0.13
    
    func totalWithTax(_ subtotal:Double) -> Double {
        
        return subtotal * (1 + tax)
    }
}

// Exersise #2
struct BillSplitter {
    
    var tax = 0.13
    
    func splitBy(subtotal:Double, people:Int) -> Double {
        
        let taxCalc = TaxCalculator()
        let total = taxCalc.totalWithTax(subtotal)
        return total / Double(people)
    }
}

// Exercise #3
let split = BillSplitter()
print(split.splitBy(subtotal: 120, people: 5))

