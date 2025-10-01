import SwiftUI

struct Tabs: View {
  @State private var isPresented = false
    var body: some View {
        TabView {
            Tab("Home", systemImage: "timer") {
                Home()
            }
            Tab("New Countdown", systemImage: "plus.circle") {
              Button(action: {isPresented.toggle()}) {
                Text("Add new Countdown")
                  .sheet(isPresented: $isPresented ) {
                    NewCountDown()
                  }
              }
                // add sheet here
            }
            Tab("All Timers", systemImage: "list.bullet.indent") {
                CountDownList()
            }
        }
    }
}

#Preview {
    Tabs()
}
