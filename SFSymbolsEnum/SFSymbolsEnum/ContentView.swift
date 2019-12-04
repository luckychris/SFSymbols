//
//  ContentView.swift
//  SFSymbolsEnum
//
//  Created by Christoph Duyster on 04.12.19.
//  Copyright © 2019 Christoph Duyster. All rights reserved.
//

import SwiftUI

// #if DEBUG here, so that the preview works...
#if DEBUG
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
            Image(systemName: "00.circle")
                .resizable()
                .frame(width:20)
            SFImage(systemName: ._00_circle)
                .resizable()
                .frame(width:20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
