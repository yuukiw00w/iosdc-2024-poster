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
            Group {
                Button("ExistentialAnySample") {
                    let existentialAny = ExistentialAnySample()
                    doPrintSample(existentialAny: existentialAny)
                }
                Button("ConciseMagicFileSample: printFile") {
                    printFile()
                }
                Button("ConciseMagicFileSample: printFilePath") {
                    printFilePath()
                }
                Button("RegexLiteralsSample") {
                    printRegexLiteralMatch()
                }
            }.padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
