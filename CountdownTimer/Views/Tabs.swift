import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "timer") {
                Home()
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
