//
//  SwiftRefresher.swift
//  Swift_Refresher
//
//  Created by Dan Esrey on 2016/24/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import Foundation

func awesomeFunction (array: [Int])-> Int {
    var product = 1
    for number in array {
        product = product * number
    }
    return product
}

func enhanceArray (array: [Int])-> [Int]{
    let n = array.count
    var enhancedArray = [Int]()
    var enhancedValue: Int = 0
    
    for index in 0...(n-1) {
        enhancedValue = awesomeFunction(array: array)/array[index]
        enhancedArray.append(enhancedValue)
    }
    return enhancedArray
}

func dedupeSortedArray (arrayWithDupes: [Int])->([Int], Int) {
    var result = [Int]()
    let c = arrayWithDupes.count
    
    for index in 0...(c-1) {
        if !result.contains(arrayWithDupes[index]) {
            result.append(arrayWithDupes[index])
        }
    }
    return (result, result.count)
}

