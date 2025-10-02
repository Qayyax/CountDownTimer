//
//  NewCountDown.swift
//  CountdownTimer
//
//  Created by Qayyax on 10/1/25.
//

import SwiftUI

struct NewCountDown: View {
  @State private var isPresented = false
  @State private var name = ""
  @State private var date = Date.now
  @State private var image: Data? = nil

  var body: some View {
    VStack {
      HStack{
        Text("Event Name:")
        TextField("Enter the name of the event", text: $name)
      }
      DatePicker(selection: $date,
                 in: Date()..., // starts from today till no end
                 displayedComponents: [.date, .hourAndMinute]) {
        Text("Enter the date and time of the event")
      }
    }
      // form to get user information
    }
}

#Preview {
    NewCountDown()
}
