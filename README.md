# SwiftUIObject

SwiftUI で色々な Object を使ってみる

[参考にした Zenn の書籍](https://zenn.dev/rikutosato/books/6cee0a2b8aa796/viewer/cb50dd)

## Text を配置する

縦向きに、Text を並べる UI を作成

```swift
import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("minn")
            Text("taise")
            Text("yui")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

<img src="./img/text.png" width="300" alt="test.png">

## Buttonを配置する
Buttonを配置して、押すとダイアログを出す処理を作ってみました。

```swift
import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        VStack {
            Button(action: {
                // ボタンを押したときに実行される処理
                // ダイアログを表示する
                self.showingAlert = true
            }, label: {
                Text("ボタン")
            })
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("重要なメッセージ"), message: Text("ボタンが押されました"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

<img src="./img/button.png" width="300" alt="button.png">

## 画像を表示する
x-codeのAssetsに、jpegかpngの画像を配置する。Swiftでは、拡張子なしで画像の名前を指定すると、UIに表示することができる。

```swift
import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        VStack {
            Image("orechan")
        }
        Text("俺ちゃん")
            .font(.system(size: 30))
            .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

<img src="./img/img.png" width="300" alt="img.png">
