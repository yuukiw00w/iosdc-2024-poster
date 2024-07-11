//
//  ImportObjcForwardDeclarationsSample.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/12.
//

import Foundation

func importObjcForwardDeclarationsSample() {
    let sample1 = ForwardDeclaredSampleClass1()
    print(sample1)
    let sample2 = sample1.createSample()!
    print(sample2)
}

