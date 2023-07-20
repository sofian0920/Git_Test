//
//  ContentView.swift
//  Git_Test
//
//  Created by Софья Норина on 17.07.2023.
//

import SwiftUI

struct SignInView: View {
    @State var token = ""
    @FocusState private var editing
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea(.all)
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 96, height: 96)
                    .padding(45)
                TextField(
                         "",
                         text: $token,
                         prompt: Text("Personal access token")
                            .foregroundColor(.gray)
                     )
                     .frame(width: 343, height: 37)
                     .textFieldStyle(BorderedStyle(focused: editing))
                     .focused($editing)
                     .multilineTextAlignment(.leading)
                     .keyboardType(.numberPad)
                   }
                    
            }
        }
        
    }

struct BorderedStyle: TextFieldStyle {
  var focused: Bool

  func _body(configuration: TextField<Self._Label>) -> some View {
      configuration
      .padding(10)
      .background(
          Rectangle()
              .stroke(
                  focused ? Color.red : Color.gray, lineWidth: 2
              )
      )
      .cornerRadius(8)
  }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
