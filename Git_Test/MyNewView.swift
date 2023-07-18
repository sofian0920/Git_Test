//
//  ContentView.swift
//  Git_Test
//
//  Created by Софья Норина on 17.07.2023.
//

import SwiftUI

struct MyNewView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("This is test")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyNewView()
    }
}
