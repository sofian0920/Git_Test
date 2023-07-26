//
//  FullInfoView.swift
//  Git_Test
//
//  Created by Софья Норина on 25.07.2023.
//

import SwiftUI

struct FullInfoView: View {
    
    var body: some View {
        ZStack{
            Color.mainThim.ignoresSafeArea(.all)
            VStack{
                Text("Some link")
                HStack{
                    Text("License")
                    Spacer()
                    Text("Apsrche-20")
                }
                HStack{
                    Text("stars")
                    Spacer()
                    Text("forks")
                    Spacer()
                    Text("watchers")
                    
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct FullInfoView_Previews: PreviewProvider {
    static var previews: some View {
        FullInfoView()
    }
}
