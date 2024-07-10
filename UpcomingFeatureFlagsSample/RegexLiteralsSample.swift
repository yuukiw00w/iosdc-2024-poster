//
//  RegexLiteralsSample.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/10.
//

import Foundation

func printRegexLiteralMatch() {
    let text = "My name is Noseda"
    let regex = /My name is (.*)/

    if let match = text.matches(of: regex).first {
        print(match.1)
    }
}
