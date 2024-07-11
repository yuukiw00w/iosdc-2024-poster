//
//  ImplicitOpenExistentialsSample.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/10.
//

import Foundation

protocol P {
    associatedtype A
    func getA() -> A
}

struct PImpl: P {
    func getA() -> Int {
        3
    }
}

func implicitOpenExistentialsSample(anyP: any P) {
    func returnA<Value: P>(_ value: Value) -> Value.A { value.getA() }
    print(returnA(anyP))
}

func implicitOpenExistentialsSample2(anyP: any P) {
    func returnTypeSelf<Value>(_: Value.Type) -> Value.Type { Value.self }
    
    let anyPType = type(of: anyP)
    
    print(returnTypeSelf(_openExistential(anyPType, do: returnTypeSelf)))
//    print(returnTypeSelf(anyPType))
}
