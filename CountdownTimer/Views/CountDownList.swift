import SwiftUI

struct CountDownList: View {
  // list of the count downs
  // toolbars (add List, edit)
  // addlist brings up sheet
  @Environment(CountDownClass.self) var countDownInstance
  @State var isPresented: Bool = false
  var body: some View {
    NavigationStack {
      
    VStack {
      Text("Countdown List")
      List {
        ForEach(countDownInstance.countDowns) { countDown in
          VStack(alignment: .leading, spacing: 8) {
            if let image = countDown.image {
              image
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            }
            Text(countDown.name)
            Text(countDown.date.formatted(date: .abbreviated, time: .shortened))
              .foregroundStyle(.secondary)
          }
        }
        .onDelete(perform: countDownInstance.removeCountDownFromList)
      }
      .toolbar{
        EditButton()
        Button("Add Countdown") {
          isPresented.toggle()
        }
      }
      .sheet(isPresented: $isPresented) {
        NewCountDown()
      }
    }
    }
  }
}


#Preview {
  CountDownList()
    .environment(CountDownClass())
}
