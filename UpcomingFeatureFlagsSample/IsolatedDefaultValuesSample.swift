//
//  IsolatedDefaultValuesSample.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/11.
//

import Foundation

@globalActor
struct SampleGlobalActor {
  actor ActorType { }
  static let shared: ActorType = ActorType()
}

@MainActor func requiresMainActor() -> Int { 1 }
@SampleGlobalActor func requiresAnotherActor() -> Int { 2 }

class IsolatedDefaultValuesSampleClass {
  @MainActor var x1 = requiresMainActor()
  @SampleGlobalActor var x2 = requiresAnotherActor()

  nonisolated init() {}
}
