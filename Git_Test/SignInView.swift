//
//  ContentView.swift
//  Git_Test
//
//  Created by Софья Норина on 17.07.2023.
//

import SwiftUI

struct SignInView: View {
    @State var token = ""
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea(.all)
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 96, height: 96)
                    .padding(45)
                TextField("Personal access token", text: $token)
                    .textContentType(.password)
                    .background(Color.black)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 343, height: 48)
                    .foregroundColor(Color.white)
                    .padding()
                
            }
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
