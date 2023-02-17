//
//  ContentView.swift
//  RollingCounter
//
//  Created by NHN on 2023/02/16.
//

import SwiftUI

struct ContentView: View {
  @State var value = 0
  var body: some View {
    NavigationStack {
      VStack(spacing: 25) {
        RollingText(font: .system(size: 55),
                    weight: .black,
                    value: $value)
        .font(.largeTitle)

        Button("Change Value") {
          value = .random(in: 200 ... 1300)
        }
      }
      .padding()
      .navigationTitle("Rolling Counter")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
