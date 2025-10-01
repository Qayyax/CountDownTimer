import SwiftUI

struct CountDownList: View {
  // list of the count downs
  // toolbars (add List, edit)
  // addlist brings up sheet
  @State private var isPresented = false
  @State private var name = ""
  @State private var date = Date.now
  @State private var image: Data? = nil
  // have to move this to NewCountDown.swift
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
  }
}

#Preview {
  CountDownList()
}
