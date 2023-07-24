//
//  SplashScreenView.swift
//  Git_Test
//
//  Created by Софья Норина on 24.07.2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
       
       var body: some View {
           ZStack {
               if self.isActive {
                   SignInView()
               } else {
                   Color.mainThim.ignoresSafeArea(.all)
                   VStack{
                       Image("logo")
                           .resizable()
                           .frame(width: 260, height: 260)
                           .padding(45)
                       
                   }
                   
               }
           }
           .onAppear {
               DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                   withAnimation {
                       self.isActive = true
                   }
               }
           }
       }
           
   }
    
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
