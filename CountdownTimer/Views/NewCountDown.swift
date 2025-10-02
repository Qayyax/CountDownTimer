import SwiftUI
import PhotosUI

struct NewCountDown: View {
  @State private var isPresented = false
  @State private var name = ""
  @State private var date = Date.now
  @State private var image: Image? = nil
  @State private var imageItem: PhotosPickerItem? = nil

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
      
      image?
        .resizable()
        .scaledToFit()

      PhotosPicker("Select Image",
                   selection: $imageItem,
                   matching: .images
      )
    }
    .task(id: imageItem) {
      image = try? await imageItem?
        .loadTransferable(type: Image.self)
    }
    .toolbar {
      Button("Save") {
        print("Saved")
      }
    }
  }
}

#Preview {
    NewCountDown()
}
