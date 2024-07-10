//
//  RegexLiteralsSample.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/10.
//

import Foundation

func printRegexLiteralMatch() {
    let text = "My name is Noseda"
    let pattern = "My name is (.*)"

    do {
        let regex = try NSRegularExpression(pattern: pattern)
        let nsRange = NSRange(text.startIndex..<text.endIndex, in: text)
        
        if let match = regex.firstMatch(in: text, options: [], range: nsRange) {
            if let range = Range(match.range(at: 1), in: text) {
                let matchedString = String(text[range])
                print(matchedString)
            }
        }
    } catch {
        print("Invalid regex pattern")
    }
}
