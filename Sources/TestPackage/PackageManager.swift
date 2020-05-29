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
};
