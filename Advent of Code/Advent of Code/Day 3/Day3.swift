//
//  Day3.swift
//  Advent of Code
//
//  Created by John Peden on 12/4/21.
//

import Foundation

typealias GammaRate = [Int]
extension GammaRate {
    func toString() -> String {
        return self
            .map{ String($0) }
            .joined(separator: "")
    }
    
    func epsilon() -> GammaRate {
        return self.map {
            if $0 == 0 { return 1 }
            return 0
        }
    }
    
    func powerConsumption() -> UInt {
        return strtoul(self.toString(), nil, 2) * strtoul(epsilon().toString(), nil, 2)
    }
}

struct Day3 {
    func part1() {
        var separateBinaryNumbers = Util.readFile(name: "day3_1")
            .components(separatedBy: .newlines)
            .filter { !$0.isEmpty }
            .map {
                Array(
                    $0.map { $0.wholeNumberValue! }
                )
            }
        
        var gammaRate = GammaRate()
        
        for (i, _) in separateBinaryNumbers[0].enumerated() {
            
            var zeroes = 0
            var ones = 0
            for (j, _) in separateBinaryNumbers.enumerated() {
                if separateBinaryNumbers[j][i] == 0 {
                    zeroes += 1
                } else {
                    ones += 1
                }
                
            }
            
            if zeroes == ones {
                print("error, no most commmon")
            } else if zeroes > ones {
                gammaRate.append(0)
            } else {
                gammaRate.append(1)
            }
        }
        
        print(gammaRate.powerConsumption())
    }
}
