//
//  ContentView.swift
//  CountdownTimer
//
//  Created by Qayyax on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
          Tabs()
    }
}

//
//struct ContentView_Previews: PreviewProvider {
//  static var previews: some View {
//    ContentView()
//      .environment(CountDownClass())
//  }
//}

#Preview {
  ContentView()
    .environment(CountDownClass())
}
