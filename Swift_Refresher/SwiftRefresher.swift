//
//  SwiftRefresher.swift
//  Swift_Refresher
//
//  Created by Dan Esrey on 2016/24/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import Foundation

let array = [10, 4, 1, 6, 2]
let n = array.count
var enhancedArray = [Int]()
let arrayWithDupes = [1,  4,  21, 21, 50, 50, 50, 50, 100, 101]


func awesomeFunction (_: [Int])-> Int {
    var product = 1
    for number in array {
        product = product * number
    }
    return product
}

func enhanceArray (_: [Int])-> [Int]{
    var enhancedValue: Int = 0
    
    for index in 0...(n-1) {
        enhancedValue = awesomeFunction(array)/array[index]
        enhancedArray.append(enhancedValue)
    }
    return enhancedArray
}

func dedupeSortedArray (_: [Int])->([Int], Int) {
    var result = [Int]()
    let c = arrayWithDupes.count
    
    for index in 0...(c-1) {
        if !result.contains(arrayWithDupes[index]) {
            result.append(arrayWithDupes[index])
        }
    }
    return (result, result.count)
}

