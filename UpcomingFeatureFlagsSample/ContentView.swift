//
//  ContentView.swift
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("ExistentialAnySample") {
                let existentialAny = ExistentialAnySample()
                doPrintSample(existentialAny: existentialAny)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
