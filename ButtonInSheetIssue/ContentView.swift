//
//  ContentView.swift
//  ButtonInSheetIssue
//
//  Created by Robb Böhnke on 31.03.25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    let scrollView = ScrollView {
      ForEach(0 ..< 200) { i in
        Button {
          print(i)
        } label: {
          Text("Hello #\(i)").frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
      }
    }
      .safeAreaPadding()

    scrollView
      .sheet(isPresented: .constant(true)) {
        scrollView
      }
  }
}

#Preview {
  ContentView()
}
