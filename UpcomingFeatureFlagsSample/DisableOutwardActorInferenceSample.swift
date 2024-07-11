//
//  DisableOutwardActorInferenceSample.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/11.
//

import Foundation

@propertyWrapper
@MainActor
struct MainActorWrapper<Wrapped> {
    @MainActor var wrappedValue: Wrapped
}

@MainActor
struct MainActorIsolationInferenceSample {
    @MainActorWrapper var intValue: Int = 0
    nonisolated func nonisolatedFunc() {}
    func isolatedFunc() {}
}

actor SampleActor {
    let mainActorSample: MainActorIsolationInferenceSample
    
    init(mainActorSample: MainActorIsolationInferenceSample) {
        self.mainActorSample = mainActorSample
    }
    
    func nonisolatedFunc() {
        mainActorSample.nonisolatedFunc()
    }
    
    func isolatedFunc() async {
        await mainActorSample.isolatedFunc()
    }
}
