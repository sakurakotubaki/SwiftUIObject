import SwiftUI

struct ContentView: View {
    @State var notificaton = false
    @State var watch = false

    var body: some View {
        VStack {
            // 四角い図形を配置
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 200, height: 200)
            // 丸の図形を配置
            Circle()
                .foregroundColor(.green)
                .frame(width: 200, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
