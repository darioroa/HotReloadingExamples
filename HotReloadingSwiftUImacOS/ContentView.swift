//
//  ContentView.swift
//  HotReloadingSwiftUImacOS
//
//  Created by Dario Roa on 25/4/22.
//

import SwiftUI
import Inject

struct ContentView: View {
    @ObservedObject private var iO = Inject.observer
    var body: some View {
        VStack {
            Text("Hello, SwiftUI on the Mac!")
                .padding(20)
            
            Button("Hello", action: {})
        }.frame(width: 400, height: 400)
        .enableInjection()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
