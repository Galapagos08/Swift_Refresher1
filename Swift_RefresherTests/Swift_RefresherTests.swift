//
//  Swift_RefresherTests.swift
//  Swift_RefresherTests
//
//  Created by Dan Esrey on 2016/24/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import XCTest
@testable import Swift_Refresher

class Swift_RefresherTests: XCTestCase {
            
        func testAwesomeFunction() {
            let case1 = [2, 4, 5]
            let case2 = [1, 3, 10]
            let case3 = [4, 6, 11]
            let case4 = [3, 7, 9]
            
            XCTAssertEqual(awesomeFunction(array: case1), 40)
            XCTAssertEqual(awesomeFunction(array: case2), 30)
            XCTAssertEqual(awesomeFunction(array: case3), 264)
            XCTAssertEqual(awesomeFunction(array: case4), 189)
        }
        
        func testEnhanceArray() {
            let case1 = [10,  4,  1, 6,  2]
            let case2 = [2, 4, 5]
            let case3 = [1, 3, 10]
            let case4 = [4, 6, 11]
            let case5 = [3, 7, 9]
            
            XCTAssertEqual(enhanceArray(array: case1), [48, 120, 480, 80, 240])
            XCTAssertEqual(enhanceArray(array: case2), [20, 10, 8])
            XCTAssertEqual(enhanceArray(array: case3), [30, 10, 3])
            XCTAssertEqual(enhanceArray(array: case4), [66, 44, 24])
            XCTAssertEqual(enhanceArray(array: case5), [63, 27, 21])
        }
        
        func testDedupeSortedArray() {
            let case1 = [1, 1, 4, 5, 5, 6, 7, 7, 10]
            let case2 = [1,  4,  21, 21, 50, 50, 50, 50, 100, 101]
            let case3 = [3, 3, 10, 10, 18, 19, 19]
            let case4 = [4, 4, 6, 11, 11]
            let case5 = [3, 7, 9, 10]
            let case6 = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
            
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case1).0, [1, 4, 5, 6, 7, 10])
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case2).0, [1, 4, 21, 50, 100, 101])
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case3).0, [3, 10, 18, 19])
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case4).0, [4, 6, 11])
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case5).0, [3, 7, 9, 10])
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case6).0, [2])
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case1).1, 6)
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case2).1, 6)
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case3).1, 4)
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case4).1, 3)
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case5).1, 4)
            XCTAssertEqual(dedupeSortedArray(arrayWithDupes: case6).1, 1)
            
        }
}
