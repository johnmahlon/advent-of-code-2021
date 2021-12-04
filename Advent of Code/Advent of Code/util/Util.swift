//
//  Util.swift
//  Advent of Code
//
//  Created by John Peden on 12/4/21.
//

import Foundation

struct Util {
    static func getBundle() -> Bundle? {
        let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
        let bundleURL = URL(fileURLWithPath: "Data.bundle", relativeTo: currentDirectoryURL)
        return Bundle(url: bundleURL)
    }
    
    static func readFile(name: String) -> String {
        if let path = Util.getBundle()?.path(forResource: name, ofType: "txt") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                return data
            } catch {
                print(error)
                return ""
            }
        } else {
            print("no file found")
            return ""
        }
    }
}
