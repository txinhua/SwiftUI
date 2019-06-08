//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 唐桂富 on 2019/6/9.
//  Copyright © 2019 唐桂富. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("SwiftUI Demo")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
