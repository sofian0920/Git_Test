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
            Color.black.ignoresSafeArea(.all)
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 96, height: 96)
                    .padding(45)
                CustomTextField()
                
                   }
                    
            }
        }
        
    }

struct CustomTextField: View {
    @State var token = ""
    var body: some View {
        TextField("", text: $token, prompt: Text("Personal access token").foregroundColor(.gray))
            .padding(10)
            .frame(width: 343, height: 48)
            .background(Color.black)
            .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray )
                )
            .foregroundColor(.white)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
        CustomTextField()
    }
}
