//
//  ForwardTrailingClosuresSample.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/10.
//

import Foundation

func forwardTrailingClosuresSample(
    first: () -> Void = { print("first") },
    second: () -> Void = { print("second") }
) {
    first()
    second()
}
