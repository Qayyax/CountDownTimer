//
//  CountDownForm.swift
//  CountdownTimer
//
//  Created by Qayyax on 10/1/25.
//

import Foundation
import SwiftUI
import Observation

struct CountDownType: Identifiable {
  var id = UUID()
  var name: String
  var date: Date
  var image: Image?
}

@Observable
class CountDownClass {
  var countDowns: [CountDownType] = []
  func addCountDown(countDown: CountDownType) {
    countDowns.append(countDown)
  }
  func removeCountDownFromList(atOffsets offsets: IndexSet) {
    countDowns.remove(atOffsets: offsets)
  }
  
  func deleteCountDown(_ countDown: CountDownType) {
    countDowns.removeAll { $0.id == countDown.id }
  }
}
