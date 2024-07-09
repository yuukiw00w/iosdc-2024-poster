//
//  ExistentialAnySample.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/09.
//

import Foundation

class ExistentialAnySample: ExistentialAnySampleProtocol {
    func printSample() {
        print("sample")
    }
}

protocol ExistentialAnySampleProtocol {
    func printSample()
}

func doPrintSample(existentialAny: any ExistentialAnySampleProtocol) {
    existentialAny.printSample()
}
