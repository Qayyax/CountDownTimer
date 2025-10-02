//
//  CountdownTimerApp.swift
//  CountdownTimer
//
//  Created by Qayyax on 10/1/25.
//

import SwiftUI

@main
struct CountdownTimerApp: App {
  @State private var countDownInstance = CountDownClass()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environment(countDownInstance)
        }
    }
}
