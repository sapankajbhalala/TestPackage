//
//  PackageManager.swift
//  SPM1
//
//  Created by Pankaj Bhalala on 28/05/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import Foundation

public struct PackageManager {
    public static func displayData() {
        print("Display Data")
    }
    
    public static func getSumValue(a: Int, b: Int) -> Int {
        return a + b
    }
    
    public static func sortArraybyParity(A: [Int]) -> [Int] {
        var arrEven = A.filter { $0 % 2 == 0 }
        let arrOdd = A.filter { $0 % 2 == 1 }
        var i = 1
        for j in arrOdd {
            arrEven.insert(j, at: i)
            i += 2
        }
        return arrEven
    }
    
    /*
     /// ---palindromeSequence---
     You are given an array numbers. Expand the numbers into an a palindrome landscape of mountains. For numbers = [2,3,2,4], palindromeMountains = [1,2,1,2,3,1,2,1,2,3,4,3,2,1]
     **/
    public static func palindromeSequence(numbers:[Int]) -> [Int] {
        var mountains = [Int]()
        for i in 0..<numbers.count {
            var j = 1
            if i != 0 {j = 2}
            while j <= numbers[i] {
                mountains.append(j)
                j += 1
            }
            j -= 1
            repeat {
                j -= 1
                mountains.append(j)
            } while j > 1

        }
        return mountains
    }

};
