import SwiftUI

struct CountDownList: View {
  // list of the count downs
  // toolbars (add List, edit)
  // addlist brings up sheet
  @State private var isPresented = false
  @State private var name = ""
  @State private var date: Date = Date()
  @State private var image: Data? = nil
  var body: some View {
        Text("CountDownList page")
    }
}

#Preview {
  CountDownList()
}
