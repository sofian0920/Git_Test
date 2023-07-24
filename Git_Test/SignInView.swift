//
//  ContentView.swift
//  Git_Test
//
//  Created by Софья Норина on 17.07.2023.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        ZStack{
            Color.mainThim.ignoresSafeArea(.all)
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 96, height: 96)
                    .padding(45)
                CustomTextField()
                

                Button("Sign In", action: {})
                    .frame(width: 343, height: 48)
                    .background(Color.buttonColor)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        
    }
    
    struct CustomTextField: View {
        @State var token = ""
        @FocusState private var isFocused: Bool
        var body: some View {
            TextField("", text: $token, prompt: Text("Personal access token").foregroundColor(.gray))
                .padding(10)
                .frame(width: 343, height: 48)
                .focused($isFocused)
                .background(Color.mainThim)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke( isFocused ? Color.blue : Color.gray, lineWidth: 2)
                )
                .foregroundColor(.white)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
