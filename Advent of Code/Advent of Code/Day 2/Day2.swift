//
//  Day2.swift
//  Advent of Code
//
//  Created by John Peden on 12/4/21.
//

import Foundation

struct Day2 {
    func part1() {
        
        var horizontal = 0
        var depth = 0
        
        Util.readFile(name: "day2_1")
            .components(separatedBy: .newlines)
            .filter { !$0.isEmpty }
            .map { $0.components(separatedBy: .whitespaces) }
            .map { [$0[0], Int($0[1])!] }
            .forEach {
                let instruction = $0[0] as! String
                let value = $0[1] as! Int
                
                switch instruction {
                case "down": depth += value
                case "up": depth -= value
                case "forward": horizontal += value
                default: print("Unsupported Instruction")
                }
            }
        
        print(horizontal * depth)
    }
    
    func part2() {
        var horizontal = 0
        var depth = 0
        var aim = 0
        
        Util.readFile(name: "day2_1")
            .components(separatedBy: .newlines)
            .filter { !$0.isEmpty }
            .map { $0.components(separatedBy: .whitespaces) }
            .map { [$0[0], Int($0[1])!] }
            .forEach {
                let instruction = $0[0] as! String
                let value = $0[1] as! Int
                
                switch instruction {
                case "down":
                    aim += value
                case "up":
                    aim -= value
                case "forward":
                    horizontal += value
                    depth += aim * value
                default: print("Unsupported Instruction")
                }
            }
        
        print(horizontal * depth)
    }
}
