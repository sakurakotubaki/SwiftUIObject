import SwiftUI

struct ContentView: View {
    @State var notificaton = false
    @State var watch = false

    var body: some View {
        VStack {
            Image("orechan")
        }
        List {
            HStack {
                Text("通知を設定")
                // Toggleを右端に寄せる
                Spacer()
                Toggle("切り替え", isOn: $notificaton)
            }
            HStack {
                Text("めざましを設定")
                // Toggleを右端に寄せる
                Spacer()
                Toggle("切り替え", isOn: $watch)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
