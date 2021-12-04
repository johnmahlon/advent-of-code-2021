//
//  Day1.swift
//  Advent of Code
//
//  Created by John Peden on 12/4/21.
//

import Foundation

struct Day1 {
    static func puzzle1(_ bundle: Bundle) {
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
    
    static func puzzle2(_ bundle: Bundle) {
        
    }
}
