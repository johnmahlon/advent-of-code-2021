//
//  Day1.swift
//  Advent of Code
//
//  Created by John Peden on 12/4/21.
//

import Foundation

struct Day1 {
    func puzzle1(_ bundle: Bundle) {
        if let path = bundle.path(forResource: "day1_1", ofType: "txt") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                
                var increase = 0
                var prev = 0
                
                data
                    .components(separatedBy: .newlines)
                    .filter { !$0.isEmpty }
                    .map { Int($0)! }
                    .forEach {
                        if $0 > prev {
                            increase+=1
                        }
                        
                        prev = $0
                    }
                
                // subtract 1 to account for initial read
                print(increase-1)
                
            } catch {
                print(error)
            }
        } else {
            print("no file found")
        }
    }
    
    func puzzle2(_ bundle: Bundle) {
        if let path = bundle.path(forResource: "day1_1", ofType: "txt") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                
                let depths = data
                    .components(separatedBy: .newlines)
                    .filter { !$0.isEmpty }
                    .map { Int($0)! }
                
                var sums = [Int]()
                for (index, _) in depths.enumerated() {
                    if index == depths.count - 2 {
                        break
                    }
                    
                    sums.append(depths[index] + depths[index+1] + depths[index+2])
                }
                
                var prev = 0
                var increase = 0
                
                sums.forEach {
                        if $0 > prev {
                            increase+=1
                        }
                        
                        prev = $0
                    }
                
                // subtract 1 to account for initial read
                print(increase-1)
                
            } catch {
                print(error)
            }
        } else {
            print("no file found")
        }
    }
}
