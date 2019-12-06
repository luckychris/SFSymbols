 https://img.shields.io/github/issues-raw/luckychris/SFSymbols/LABEL-NAME.svg

# SFSymbols
SwiftUI SFSymbols as Enum

I really love the new big SFSymbols "library" of Apple, but i think the "how to use" could be better with enums. Why do i think that? Because developers normally are lazy and love autocompletion and so the can "pick" their symbol they want to have instead of "knowing" how the name of that specific symbol was (which is really difficult to remember if there are more than 1500 symbols...)

So i wrote this little SFSymbolEnum (if it is not complete, just let me know...) and SFImage with which you have full enum support.

I added a small sample so you can check whether "your symbol" is in there.

Easy use:
```swift
SFImage(systemName: ._00_circle)   
                .resizable()
                .frame(width:20)
```

Note: Because dots are not allowed i replaced all dots of the symbols names with underscores and because a case must not begin with numbers each case begins with an underscore.

Hope you enjoy it!

Example usage:

```swift


struct ContentView: View {
    var body: some View {
        Group() {
            List(SFSymbolsEnum.allCases, id: \.self) { key in
                HStack {
                    Text(key.rawValue)
                    Spacer()
                    SFImage(systemName: key)
                    .resizable()
                        .frame(width:40, height:40)
                }
            }
        }
    }
}

struct SFSymbol_Previews: PreviewProvider {
    static var previews: some View {
        List {
            Text("2 symbols")
            Image(systemName: "00.circle")   // old style
                .resizable()
                .frame(width:20)
            SFImage(systemName: ._00_circle)   // new style
                .resizable()
                .frame(width:20)
        }
    }
}
```
