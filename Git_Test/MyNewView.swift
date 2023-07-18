//
//  ContentView.swift
//  Git_Test
//
//  Created by Софья Норина on 17.07.2023.
//

import SwiftUI

struct MyNewView: View {
    var body: some View {
        ZStack{
            
            Color.red.ignoresSafeArea(.all)
            Text("Hello World")
                .padding()
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyNewView()
    }
}
